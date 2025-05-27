using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Models.DTOs;
using Application.Utility;
using Core.Domain.Entities;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;


public class ClientCreatesNewItemDto : BaseDto
{
    public CreateNewItemDto newItemDto { get; set; }
}

public class ClientCreatesNewItem(IItemRepository itemRepo) : BaseEventHandler<ClientCreatesNewItemDto>
{
    public override async Task Handle(ClientCreatesNewItemDto dto, IWebSocketConnection socket)
    {

        Item item = ItemEntityUtil.CreateNewItemDtoToItem(dto.newItemDto);
        
        await itemRepo.AddItem(item);

        ServerSendsCreatedItem responseDto = new ServerSendsCreatedItem()
        {
            eventType = "ServerSendsCreatedItem",
            item = item,
            Message = "successfully added item",
            requestId = dto.requestId,
        };
        
        socket.SendDto(responseDto);
        
    }
}
