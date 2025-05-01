using WebSocketBoilerplate;

namespace Api.Websocket.ServerResponses;

public class ServerSendsErrorMessage : BaseDto
{
    public string Message { get; set; }
}