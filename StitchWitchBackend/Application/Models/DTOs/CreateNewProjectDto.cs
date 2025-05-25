namespace Application.Models.DTOs;

public class CreateNewProjectDto
{
    public string Name { get; set; } = null!;
    
    // This should be a base64 encoded image file.
    public string? Image { get; set; }

    public string? Description { get; set; }

    public string? Yarn { get; set; }

    public string? Hook { get; set; }

}