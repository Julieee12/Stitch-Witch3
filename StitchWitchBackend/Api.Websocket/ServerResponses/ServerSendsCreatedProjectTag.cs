using Application.Models.DTOs;

namespace Api.Websocket.ServerResponses;

public class ServerSendsCreatedProjectTag : ServerActionSuccess
{
    public string ProjectId { get; set; }
    public TagDto Tag { get; set; }
}