﻿namespace Application.Models.DTOs;

public class ItemDto
{
    public string Id { get; set; } = null!;

    public string Name { get; set; } = null!;

    public string? Picurl { get; set; }

    public string? Description { get; set; }
}