using Application.Models;
using Application.Models.DTOs;

namespace Api.Websocket.ServerResponses;

public class ServerSendsCoords : ServerActionSuccess
{
    public List<Coordinate> Coordinates { get; set; }
    public CoordDto LatestCoord { get; set; }
    public bool stitchCounted { get; set; }
}