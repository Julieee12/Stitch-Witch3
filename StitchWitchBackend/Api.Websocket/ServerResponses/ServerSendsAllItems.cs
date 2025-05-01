using Core.Domain.Entities;
using WebSocketBoilerplate;

namespace Api.Websocket.ServerResponses;

public class ServerSendsAllItems : BaseDto
{
    public List<Item> items { get; set; }
}