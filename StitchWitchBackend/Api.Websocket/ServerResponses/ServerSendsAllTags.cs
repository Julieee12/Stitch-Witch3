using Application.Models.DTOs;

namespace Api.Websocket.ServerResponses;

public class ServerSendsAllTags : ServerActionSuccess
{
    public List<TagDto> allTags { get; set; }
}