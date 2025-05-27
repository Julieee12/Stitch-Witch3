using Application.Models.DTOs;

namespace Api.Websocket.ServerResponses;

public class ServerSendsAllProjectsWithTags: ServerActionSuccess
{
    public List<ProjectDtoWithTags> projectsWithTags { get; set; }
}