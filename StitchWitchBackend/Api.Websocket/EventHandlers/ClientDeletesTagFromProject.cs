using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres.Interfaces;
using Core.Domain.Entities;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientDeletesTagFromProjectDto : BaseDto
{
    public string projectId { get; set; }
    public string typeId { get; set; }
}

public class ClientDeletesTagFromProject(IProjectRepository projRepo) : BaseEventHandler<ClientDeletesTagFromProjectDto>
{
    public override async Task Handle(ClientDeletesTagFromProjectDto dto, IWebSocketConnection socket)
    {
        ProjectTag projTag = new ProjectTag()
        {
            Projectid = dto.projectId,
            Tagid = dto.typeId,
        };

        await projRepo.RemoveTagFromProject(projTag);

        ServerDeletedTagFromProject responseDto = new ServerDeletedTagFromProject()
        {
            requestId = dto.requestId,
            ProjectId = dto.projectId,
            TagId = dto.typeId,
        };
        
        socket.SendDto(responseDto);

    }
}