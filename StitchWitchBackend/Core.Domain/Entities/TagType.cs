using System;
using System.Collections.Generic;

namespace Core.Domain.Entities;

public partial class TagType
{
    public string Id { get; set; } = null!;

    public string? Typename { get; set; }

    public virtual ICollection<Item> Items { get; set; } = new List<Item>();

    public virtual ICollection<Project> Projects { get; set; } = new List<Project>();
}
