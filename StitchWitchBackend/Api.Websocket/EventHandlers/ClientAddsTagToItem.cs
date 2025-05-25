using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientAddsTagToItemDto : BaseDto
{
    public string itemId { get; set; }
    public string typeId { get; set; }
}

public class ClientAddsTagToItem(IItemRepository itemRepo) : BaseEventHandler<ClientAddsTagToItemDto>
{
    public override async Task Handle(ClientAddsTagToItemDto dto, IWebSocketConnection socket)
    {

        await itemRepo.AddTagToItem(dto.itemId, dto.typeId);

        ServerSendsCreatedItemTag responseDto = new ServerSendsCreatedItemTag()
        {
            ItemId = dto.itemId,
            TagId = dto.typeId,
            Message = "successfully deleted tag " + dto.typeId + " from Item!!!!!"
        };
        
        socket.SendDto(responseDto);

    }
}