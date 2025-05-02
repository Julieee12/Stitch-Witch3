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

        var serverResponse = new ServerActionSuccess
        {
            requestId = dto.requestId,
            Message = "Successfully deleted project"
        };
        
        socket.SendDto(serverResponse);
    }
}