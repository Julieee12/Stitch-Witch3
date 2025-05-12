using WebSocketBoilerplate;

namespace Api.Websocket.ServerResponses;

public class ServerDeletedProject : BaseDto
{
    public string ProjectId { get; set; } = null!;
}