using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Models.DTOs;
using Application.Utility;
using Core.Domain.Entities;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientGetsTagWithNameDto: BaseDto
{
    public String tagName { get; set; }
}

public class ClientGetsTagWithName(IItemRepository itemRepo) : BaseEventHandler<ClientGetsTagWithNameDto>
{
    public override async Task Handle(ClientGetsTagWithNameDto dto, IWebSocketConnection socket)
    {
        TagType tagWithName = await itemRepo.GetTagWithName(dto.tagName);

        TagDto dtoWithName = ItemEntityUtil.TagTypeToTagDto(tagWithName);

        ServerSendsTagWithName responseDto = new ServerSendsTagWithName()
        {
            requestId = dto.requestId,
            eventType = nameof(ServerSendsTagWithName),
            tagWithName = dtoWithName,
        };
        
        socket.SendDto(responseDto);

    }
}