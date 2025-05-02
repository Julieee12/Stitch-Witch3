using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres.Interfaces;
using Application.Models.DTOs;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientCreatesNewProjectDto : BaseDto
{
    public CreateNewProjectDto CreateNewProjectDto { get; set; } = null!;
}

public class ClientCreatesNewProject(IProjectRepository projectRepository) : BaseEventHandler<ClientCreatesNewProjectDto>
{
    public override async Task Handle(ClientCreatesNewProjectDto dto, IWebSocketConnection socket)
    {
        var projectDto = await projectRepository.CreateNewProjectAsync(dto.CreateNewProjectDto);

        var serverResponse = new ServerSendsCreatedProject
        {
            requestId = dto.requestId,
            ProjectDto = projectDto
        };
        
        socket.SendDto(serverResponse);
    }
}