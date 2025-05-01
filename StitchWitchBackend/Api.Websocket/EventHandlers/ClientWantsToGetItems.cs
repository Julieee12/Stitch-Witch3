using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Infrastructure.Websocket;
using Core.Domain.Entities;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;


public class ClientWantsToGetItemsDto : BaseDto
{
    private string message { get; set; }
}

public class ClientWantsToGetItems(IConnectionManager connectionManager, IItemRepository itemRepo) : BaseEventHandler<ClientWantsToGetItemsDto>
{
    public override async Task Handle(ClientWantsToGetItemsDto dto, IWebSocketConnection socket)
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