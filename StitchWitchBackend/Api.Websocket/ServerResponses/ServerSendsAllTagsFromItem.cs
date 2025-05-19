using Application.Models.DTOs;
using Core.Domain.Entities;

namespace Api.Websocket.ServerResponses;

public class ServerSendsAllTagsFromItem : ServerActionSuccess
{
    public List<ItemTagDto> tagsForItem { get; set; }
}