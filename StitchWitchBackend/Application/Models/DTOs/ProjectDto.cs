namespace Application.Models.DTOs;

public class ProjectDto
{
    public string Id { get; set; } = null!;

    public string Name { get; set; } = null!;

    public int Stitch { get; set; }

    public int Row { get; set; }

    public string? Picurl { get; set; }

    public string? Description { get; set; }

    public string? Yarn { get; set; }

    public string? Hook { get; set; }

    public decimal? Time { get; set; }

    public List<TagDto> Tags { get; set; } = [];
}