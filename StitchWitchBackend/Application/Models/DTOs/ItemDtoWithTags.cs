using Core.Domain.Entities;

namespace Application.Models.DTOs;

public class ItemDtoWithTags
{
    public string Id { get; set; } = null!;

    public string Name { get; set; } = null!;

    public string? Picurl { get; set; }

    public string? Description { get; set; }

    public List<TagDto> Tags { get; set; } = null!;
}