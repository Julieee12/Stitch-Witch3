using Application.Models.DTOs;
using Core.Domain.Entities;
using WebSocketBoilerplate;

namespace Api.Websocket.ServerResponses;

public class ServerSendsAllItems : BaseDto
{
    public List<ItemDto> items { get; set; }
}