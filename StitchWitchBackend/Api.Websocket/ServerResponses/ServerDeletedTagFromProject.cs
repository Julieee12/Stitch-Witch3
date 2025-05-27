namespace Api.Websocket.ServerResponses;

public class ServerDeletedTagFromProject : ServerActionSuccess
{
    public string ProjectId { get; set; }
    public string TagId { get; set; }
}