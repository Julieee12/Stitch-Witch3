using Api.Websocket.ServerResponses;
using Application.Infrastructure.Postgres.Interfaces;
using Application.Models.DTOs;
using Fleck;
using WebSocketBoilerplate;

namespace Api.Websocket.EventHandlers;

public class ClientSendsCoordinatesDto : BaseDto
{
    public CoordDto coordinates { get; set; }
}

public class ClientSendsCoordinates(IStitchRepository stitchRepo) : BaseEventHandler<ClientSendsCoordinatesDto>
{
    public override async Task Handle(ClientSendsCoordinatesDto dto, IWebSocketConnection socket)
    {
        stitchRepo.AddCoordinateDto(dto.coordinates);

        bool wasStitchCounted = stitchRepo.WasStitchCounted();

        ServerSendsCoords response = new ServerSendsCoords()
        {
            Coordinates = stitchRepo.GetCoordinates(),
            LatestCoord = dto.coordinates,
            stitchCounted = wasStitchCounted
        };

        socket.SendDto(response);
    }
}