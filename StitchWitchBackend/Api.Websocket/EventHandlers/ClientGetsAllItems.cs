using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Models.DTOs;
using Application.Utility;
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

        List<ItemDto> allItemsDto = ItemEntityUtil.ItemListToItemDtoList(allItems);

        ServerSendsAllItems responseDto = new ServerSendsAllItems()
        {
            eventType = "ServerSendsAllItems",
            items =  allItemsDto,
            requestId = dto.requestId
        };
        
        Console.WriteLine("we got the GetAllItems event.. about to send response");
        
        socket.SendDto(responseDto);
        
    }
}