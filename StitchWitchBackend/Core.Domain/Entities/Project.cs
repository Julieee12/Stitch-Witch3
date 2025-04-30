using System;
using System.Collections.Generic;

namespace Core.Domain.Entities;

public partial class Project
{
    public string Id { get; set; } = null!;

    public string Name { get; set; } = null!;

    public string? Tag { get; set; }

    public int Stitch { get; set; }

    public int Row { get; set; }

    public string? Picurl { get; set; }

    public string? Description { get; set; }

    public string? Yarn { get; set; }

    public string? Hook { get; set; }

    public decimal? Time { get; set; }

    public virtual Tag? TagNavigation { get; set; }
}
