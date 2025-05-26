using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Models.DTOs;
using Application.Utility;
using Core.Domain.Entities;
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

        TagType addedTag = await itemRepo.GetTagWithId(dto.typeId);
        
        TagDto addedTagDto = ItemEntityUtil.TagTypeToTagDto(addedTag) ;

        ServerSendsCreatedItemTag responseDto = new ServerSendsCreatedItemTag()
        {
            ItemId = dto.itemId,
            Tag = addedTagDto,
            Message = "successfully added tag " + dto.typeId + " to Item!!!!!"
        };
        
        socket.SendDto(responseDto);

    }
}