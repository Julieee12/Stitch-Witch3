using Application.Models;
using Application.Models.DTOs;

namespace Application.Infrastructure.Postgres.Interfaces;

public interface IStitchRepository
{
    public bool WasStitchCounted();
    public void AddCoordinate(Coordinate coord);
    public void AddCoordinateDto(CoordDto dto);
    public List<Coordinate> GetCoordinates();
    public void SliceCoordsListToNewLength(int maxCount);
}