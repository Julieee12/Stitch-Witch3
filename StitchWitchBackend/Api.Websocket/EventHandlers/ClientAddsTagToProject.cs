using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Infrastructure.Postgres.Interfaces;
using Application.Models.DTOs;
using Application.Utility;
using Core.Domain.Entities;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientAddsTagToProjectDto: BaseDto
{
    public String projectId { get; set; }
    public String typeId { get; set; }
}

public class ClientAddsTagToProject(IProjectRepository projRepo, IItemRepository itemRepo): BaseEventHandler<ClientAddsTagToProjectDto>
{
    public override async Task Handle(ClientAddsTagToProjectDto dto, IWebSocketConnection socket)
    {
        await projRepo.AddTagToProject(dto.projectId, dto.typeId);
        
        TagType addedTag = await itemRepo.GetTagWithId(dto.typeId);
        
        TagDto addedTagDto = ItemEntityUtil.TagTypeToTagDto(addedTag);

        ServerSendsCreatedProjectTag responseDto = new ServerSendsCreatedProjectTag()
        {
            ProjectId = dto.projectId,
            Tag = addedTagDto
        };
        
        socket.SendDto(responseDto);
    }
}