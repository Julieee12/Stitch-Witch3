using Core.Domain.Entities;

namespace Api.Websocket.ServerResponses;

public class ServerSendsCreatedItemTag : ServerActionSuccess
{
    public ItemTag itemTag { get; set; }
}