using Application.Models.DTOs;
using WebSocketBoilerplate;

namespace Api.Websocket.ServerResponses;

public class ServerSendsAllProjects : BaseDto
{
    public List<ProjectDto> Projects { get; set; } = [];
}