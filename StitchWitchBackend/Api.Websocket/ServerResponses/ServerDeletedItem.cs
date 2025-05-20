

using Api.Websocket.ServerResponses;

public class ServerDeletedItem : ServerActionSuccess
{
    public String itemId { get; set; } = null!;
}