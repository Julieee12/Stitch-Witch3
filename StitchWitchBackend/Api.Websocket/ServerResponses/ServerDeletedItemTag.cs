namespace Api.Websocket.ServerResponses;

public class ServerDeletedItemTag : ServerActionSuccess
{
    public string ItemId { get; set; }
    public string TagId { get; set; }
}