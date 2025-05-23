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
        Console.WriteLine("REQUEST ID: " + dto.requestId);
        Console.WriteLine("EVEMT TYPE: " + dto.eventType);
        
        List<ItemDtoWithTags> _itemsWithTags = await itemRepo.GetAllItemsWithTags();

        ServerSendsAllItemsWithTags responseDto = new ServerSendsAllItemsWithTags()
        {
            eventType = "ServerSendsAllItemsWithTags",
            itemsWithTags = _itemsWithTags,
            requestId = dto.requestId,
        };
        
        
        socket.SendDto(responseDto);
        
        Console.WriteLine("SENDING ITEMS WITH TAGGGSSSS");
    }
}