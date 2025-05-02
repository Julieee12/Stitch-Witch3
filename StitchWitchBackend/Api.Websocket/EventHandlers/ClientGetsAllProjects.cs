using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres.Interfaces;
using Application.Models.DTOs;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientGetsAllProjectsDto : BaseDto;

public class ClientGetsAllProjects(IProjectRepository projectRepository) : BaseEventHandler<ClientGetsAllProjectsDto>
{
    public override async Task Handle(ClientGetsAllProjectsDto dto, IWebSocketConnection socket)
    {
        var projectDtos = await projectRepository.GetAllProjectsAsync();

        var serverResponse = new ServerSendsAllProjects
        {
            requestId = dto.requestId,
            Projects = projectDtos
        };
        
        socket.SendDto(serverResponse);
    }
}