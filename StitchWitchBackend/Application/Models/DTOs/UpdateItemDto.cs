namespace Application.Models.DTOs;

public class UpdateItemDto
{
    public string Id { get; set; } = null!;

    public string Name { get; set; } = null!;

    public string? Image { get; set; }

    public string? Description { get; set; }
}