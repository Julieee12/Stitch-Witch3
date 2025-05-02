using WebSocketBoilerplate;

namespace Api.Websocket.ServerResponses;

/*
 * This server response represents any user action
 * being completed successfully
 */
public class ServerActionSuccess : BaseDto
{
    public string Message { get; set; } = null!;
}