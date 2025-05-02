using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Models.DTOs;
using Application.Utility;
using Core.Domain.Entities;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientUpdatesItemDto : BaseDto
{
    public UpdateItemDto UpdateItemDto { get; set; }
}

public class ClientUpdatesItem(IItemRepository itemRepo) : BaseEventHandler<ClientUpdatesItemDto>
{
    public override async Task Handle(ClientUpdatesItemDto dto, IWebSocketConnection socket)
    {
        Item item = new Item()
        {
            Id = dto.UpdateItemDto.Id,
            Name = dto.UpdateItemDto.Name,
            Description = dto.UpdateItemDto.Description,
            Tag = dto.UpdateItemDto.Tag,
            Picurl = dto.UpdateItemDto.Picurl
        };

        await itemRepo.UpdateItem(item);
        
        ServerSendsUpdatedItem responseDto = new ServerSendsUpdatedItem()
        {
            ItemDto = ItemEntityUtil.ItemToItemDto(item)
        };
        socket.SendDto(responseDto);
    }
}
