using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Models.DTOs;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientGetsAllItemsWithTagsDto : BaseDto{}

public class ClientGetsAllItemsWithTags(IItemRepository itemRepo) : BaseEventHandler<ClientGetsAllItemsWithTagsDto>
{
    public override async Task Handle(ClientGetsAllItemsWithTagsDto dto, IWebSocketConnection socket)
    {
        List<ItemDtoWithTags> _itemsWithTags = await itemRepo.GetAllItemsWithTags();

        ServerSendsAllItemsWithTags responseDto = new ServerSendsAllItemsWithTags()
        {
            eventType = "ServerSendsAllItemsWithTags",
            Message = "all items with tags?",
            requestId = dto.requestId,
            itemsWithTags = _itemsWithTags,
        };
        
        
        socket.SendDto(responseDto);
        
        Console.WriteLine("SENDING ITEMS WITH TAGGGSSSS");
    }
}