using Application.Models.DTOs;

namespace Api.Websocket.ServerResponses;

public class ServerSendsTagWithName : ServerActionSuccess
{
    public TagDto tagWithName { get; set; }
}