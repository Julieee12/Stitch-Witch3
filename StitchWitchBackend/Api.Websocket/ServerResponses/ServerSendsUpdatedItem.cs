using Application.Models.DTOs;

namespace Api.Websocket.ServerResponses;

public class ServerSendsUpdatedItem : ServerActionSuccess
{
    public ItemDto ItemDto { get; set; }
}