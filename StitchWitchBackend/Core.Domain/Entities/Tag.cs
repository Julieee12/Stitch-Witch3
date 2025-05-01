using System;
using System.Collections.Generic;

namespace Core.Domain.Entities;

public partial class Tag
{
    public string Id { get; set; } = null!;

    public string Name { get; set; } = null!;

    public string Typeid { get; set; } = null!;

    public virtual ICollection<Item> Items { get; set; } = new List<Item>();

    public virtual ICollection<Project> Projects { get; set; } = new List<Project>();

    public virtual TagType Type { get; set; } = null!;
}
