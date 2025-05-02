using Application.Models.DTOs;
using WebSocketBoilerplate;

namespace Api.Websocket.ServerResponses;

public class ServerSendsUpdatedProject : BaseDto
{
    public ProjectDto ProjectDto { get; set; } = null!;
}