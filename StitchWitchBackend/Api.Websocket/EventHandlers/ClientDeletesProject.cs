using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres.Interfaces;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientDeletesProjectDto : BaseDto
{
    public string ProjectId { get; set; } = null!;
}

public class ClientDeletesProject(IProjectRepository projectRepository) : BaseEventHandler<ClientDeletesProjectDto>
{
    public override async Task Handle(ClientDeletesProjectDto dto, IWebSocketConnection socket)
    {
        await projectRepository.DeleteProjectAsync(dto.ProjectId);

        var serverResponse = new ServerDeletedProject()
        {
            requestId = dto.requestId,
            ProjectId = dto.ProjectId
        };
        
        socket.SendDto(serverResponse);
    }
}