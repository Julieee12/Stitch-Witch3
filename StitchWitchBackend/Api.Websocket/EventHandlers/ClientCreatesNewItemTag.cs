using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Models.DTOs;
using Application.Utility;
using Core.Domain.Entities;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientCreatesNewItemTagDto : BaseDto
{
    public CreateNewItemTagDto itemTagDto { get; set; }
}


public class ClientCreatesNewItemTag(IItemRepository itemRepo) : BaseEventHandler<ClientCreatesNewItemTagDto>
{
    public override async Task Handle(ClientCreatesNewItemTagDto dto, IWebSocketConnection socket)
    {
        ItemTag itemTag = ItemEntityUtil.CreateItemTagDtoToItemTag(dto.itemTagDto);

        await itemRepo.AddItemTag(itemTag);

        ServerSendsCreatedItemTag response = new ServerSendsCreatedItemTag()
        {
            eventType = "ServerSendsCreatedItemTag",
            Message = "added tag to item?",
            itemTag = itemTag,
            requestId = dto.requestId,
        };
        
        socket.SendDto(response);

    }
}