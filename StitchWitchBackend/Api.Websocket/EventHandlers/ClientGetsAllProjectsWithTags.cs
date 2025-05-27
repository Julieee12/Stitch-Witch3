using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Application.Infrastructure.Postgres.Interfaces;
using Application.Models.DTOs;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientGetsAllProjectsWithTagsDto : BaseDto{}

public class ClientGetsAllProjectsWithTags(IProjectRepository projRepo) : BaseEventHandler<ClientGetsAllItemsWithTagsDto>
{
    public override async Task Handle(ClientGetsAllItemsWithTagsDto dto, IWebSocketConnection socket)
    {
        Console.WriteLine("REQUEST ID: " + dto.requestId);
        Console.WriteLine("EVEMT TYPE: " + dto.eventType);

        List<ProjectDtoWithTags> projWithTags = await projRepo.GetAllProjectsWithTags();

        ServerSendsAllProjectsWithTags responseDto = new ServerSendsAllProjectsWithTags()
        {
            eventType = "ServerSendsAllProjectsWithTags",
            projectsWithTags = projWithTags,
            requestId = dto.requestId,
        };
        
        
        socket.SendDto(responseDto);
        
        Console.WriteLine("SENDING PROJECTS WITH TAGGGSSSS");
    }
}