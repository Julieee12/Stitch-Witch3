using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Models.DTOs;
using Application.Utility;
using Core.Domain.Entities;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientGetsAllTagsDto : BaseDto
{
    
}

public class ClientGetsAllTags(IItemRepository itemRepo) : BaseEventHandler<ClientGetsAllTagsDto>
{
    public override async Task Handle(ClientGetsAllTagsDto dto, IWebSocketConnection socket)
    {
        List<TagType> allTags = await itemRepo.GetAllTags();

        List<TagDto> allDtos = ItemEntityUtil.TagTypeListToTagDtoList(allTags);

        ServerSendsAllTags responseDto = new ServerSendsAllTags()
        {
            requestId = dto.requestId,
            allTags = allDtos,
        };
        
        socket.SendDto(responseDto);
        
    }
}