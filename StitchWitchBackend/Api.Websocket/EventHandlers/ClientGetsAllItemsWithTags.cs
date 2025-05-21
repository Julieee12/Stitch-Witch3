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
        List<ItemDtoWithTags> itemsWithTags = await itemRepo.GetAllItemsWithTags();

        ServerSendsAllItemsWithTags responseDto = new ServerSendsAllItemsWithTags()
        {
            requestId = dto.requestId,
            itemsWithTags = itemsWithTags,
        };
        
        socket.SendDto(responseDto);
    }
}