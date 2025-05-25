namespace Api.Websocket.ServerResponses;

public class ServerSendsCreatedItemTag : ServerActionSuccess
{
    public string ItemId { get; set; }
    public string TagId { get; set; }
}