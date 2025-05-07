using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Core.Domain.Entities;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;


public class ClientGetsAllItemsDto : BaseDto;

public class ClientGetsAllItems(IItemRepository itemRepo) : BaseEventHandler<ClientGetsAllItemsDto>
{
    public override async Task Handle(ClientGetsAllItemsDto dto, IWebSocketConnection socket)
    {

        List<Item> allItems = await itemRepo.GetAllItems();

        ServerSendsAllItems responseDto = new ServerSendsAllItems()
        {
            eventType = "ServerSendsAllItems",
            items =  allItems,
        };
        
        socket.SendDto(responseDto);
        
    }
}