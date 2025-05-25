using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Core.Domain.Entities;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientDeletesTagFromItemDto : BaseDto
{
    public string itemId { get; set; }
    public string typeId { get; set; }
}

public class ClientDeletesTagFromItem(IItemRepository itemRepo) : BaseEventHandler<ClientDeletesTagFromItemDto>
{
    public override async Task Handle(ClientDeletesTagFromItemDto dto, IWebSocketConnection socket)
    {
        ItemTag itemTag = new ItemTag()
        {
            Itemid = dto.itemId,
            Tagid = dto.typeId
        };
        await itemRepo.RemoveTagFromItem(itemTag);

        ServerDeletedItemTag responseDto = new ServerDeletedItemTag()
        {
            ItemId = itemTag.Itemid,
            TagId = itemTag.Tagid,
            Message = "successfully deleted tag " + itemTag.Tagid + " from Item!!!!!"
        };
        
        socket.SendDto(responseDto);

    }
}