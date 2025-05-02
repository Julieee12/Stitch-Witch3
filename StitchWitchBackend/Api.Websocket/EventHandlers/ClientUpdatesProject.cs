using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres.Interfaces;
using Application.Models.DTOs;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientUpdatesProjectDto : BaseDto
{
    public UpdateProjectDto UpdateProjectDto { get; set; } = null!;
}

public class ClientUpdatesProject(IProjectRepository projectRepository) : BaseEventHandler<ClientUpdatesProjectDto>
{
    public override async Task Handle(ClientUpdatesProjectDto dto, IWebSocketConnection socket)
    {
        var projectDto = await projectRepository.UpdateProjectAsync(dto.UpdateProjectDto);

        var serverResponse = new ServerSendsUpdatedProject
        {
            requestId = dto.requestId,
            ProjectDto = projectDto
        };
        
        socket.SendDto(serverResponse);
    }
}