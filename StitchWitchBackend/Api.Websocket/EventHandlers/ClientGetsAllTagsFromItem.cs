using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Models.DTOs;
using Application.Utility;
using Core.Domain.Entities;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientGetsAllTagsFromItemDto : BaseDto
{
    public string itemId { get; set; }
}


public class ClientGetsAllTagsFromItem(IItemRepository itemRepo) : BaseEventHandler<ClientGetsAllTagsFromItemDto>
{
    public override async Task Handle(ClientGetsAllTagsFromItemDto dto, IWebSocketConnection socket)
    {
        List<ItemTag> itemTags = await itemRepo.GetTagsForItem(dto.itemId);

        ServerSendsAllTagsFromItem response = new ServerSendsAllTagsFromItem()
        {
            eventType = "ServerSendsAllTagsFromItem",
            Message = "added tag to item?",
            tagsForItem = itemTags,
            requestId = dto.requestId,
        };
        
        socket.SendDto(response);

    }
}