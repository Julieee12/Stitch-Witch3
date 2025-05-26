using Application.Models.DTOs;

namespace Api.Websocket.ServerResponses;

public class ServerSendsCreatedItemTag : ServerActionSuccess
{
    public string ItemId { get; set; }
    public TagDto Tag { get; set; }
}