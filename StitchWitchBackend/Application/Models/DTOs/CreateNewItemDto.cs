namespace Application.Models.DTOs;

public class CreateNewItemDto
{

    public string Name { get; set; } = null!;

    public string? Tag { get; set; }

    public string? Picurl { get; set; }

    public string? Description { get; set; }
}