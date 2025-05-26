namespace Api.Websocket.ServerResponses;

public class ServerDeletedTagFromItem : ServerActionSuccess
{
    public string ItemId { get; set; }
    public string TagId { get; set; }
}