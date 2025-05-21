using Application.Models.DTOs;

namespace Api.Websocket.ServerResponses;

public class ServerSendsAllItemsWithTags : ServerActionSuccess
{
    public List<ItemDtoWithTags> itemsWithTags { get; set; }
}