using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientDeletesItemDto : BaseDto
{
    public string id { get; set; }
}


public class ClientDeletesItem(IItemRepository itemRepo ) : BaseEventHandler<ClientDeletesItemDto>
{
    public override async Task Handle(ClientDeletesItemDto dto, IWebSocketConnection socket)
    {
        await itemRepo.DeleteItem(dto.id);
        ServerActionSuccess responseDto = new ServerActionSuccess()
        {
            Message = "success! ... hopefully............",
            requestId = dto.requestId,
        };
        socket.SendDto(responseDto);
    }
}