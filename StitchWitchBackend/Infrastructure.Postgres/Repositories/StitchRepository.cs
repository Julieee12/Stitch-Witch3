using Application.Infrastructure.Postgres.Interfaces;
using Application.Models;
using Application.Models.DTOs;

namespace Infrastructure.Postgres.repositories;

public class StitchRepository : IStitchRepository
{
    private List<Coordinate> _coordinates = new List<Coordinate>();
    //maybe include a variable for when the last stitch was counted
    //either how many entries ago or stored as a time variable


    public bool WasStitchCounted()
    {
        //TODO: implement this
        //how I imagine the structure being:
        
        //check distance between each entry and make it a list
        
        //if there are multiple entries next to
        //each other that have a certain range between them,
        //count a stitch
        
        // or you could say if it goes over a certain value, count a stitch
        // who knows honestly
        
        
        //if list is over a certain amount, clear the first couple entries
        //I made a sample method for this
        //SliceCoordsListToNewLength(50);
        
        return false;
    }

    public void AddCoordinate(Coordinate coord)
    {
        _coordinates.Add(coord);
    }
    
    public void AddCoordinateDto(CoordDto dto)
    {
        Coordinate coord = new Coordinate()
        {
            X = dto.X,
            Y = dto.Y,
            Z = dto.Z
        };
        
        _coordinates.Add(coord);
    }
    
    public List<Coordinate> GetCoordinates()
    {
        return _coordinates;
    }

    //slices the list so that it's a certain length
    //starting by removing the first entry
    public void SliceCoordsListToNewLength(int maxCount)
    {
        int newStartIndex = _coordinates.Count - maxCount;

        if (newStartIndex <= 0)
        {
            Console.WriteLine("this would result in an empty list or a list with a negative length value");
            Console.WriteLine("reconsider calling this method");
            return;
        }
        
        List<Coordinate> newCoords = _coordinates.Slice(newStartIndex, maxCount);

    }
    

}