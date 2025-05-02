using Application.Models.DTOs;
using WebSocketBoilerplate;

namespace Api.Websocket.ServerResponses;

public class ServerSendsCreatedProject : BaseDto
{
    public ProjectDto ProjectDto { get; set; } = null!;
}