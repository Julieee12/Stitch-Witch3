using Core.Domain.Entities;

namespace Api.Websocket.ServerResponses;

public class ServerSendsCreatedItem : ServerActionSuccess
{
    public Item item { get; set; }
}