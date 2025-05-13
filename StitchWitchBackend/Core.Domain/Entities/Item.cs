using System;
using System.Collections.Generic;

namespace Core.Domain.Entities;

public partial class Item
{
    public string Id { get; set; } = null!;

    public string Name { get; set; } = null!;

    public string? Picurl { get; set; }

    public string? Description { get; set; }

    public virtual ItemTag? ItemTag { get; set; }
}
