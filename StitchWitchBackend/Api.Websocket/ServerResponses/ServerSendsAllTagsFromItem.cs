using Core.Domain.Entities;

namespace Api.Websocket.ServerResponses;

public class ServerSendsAllTagsFromItem : ServerActionSuccess
{
    public List<ItemTag> tagsForItem { get; set; }
}