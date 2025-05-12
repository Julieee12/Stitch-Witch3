namespace Application.Models.DTOs;

public class CreateNewProjectDto
{
    public string Name { get; set; } = null!;
    
    public string? Tag { get; set; }
    
    public string? Picurl { get; set; }

    public string? Description { get; set; }

    public string? Yarn { get; set; }

    public string? Hook { get; set; }

}