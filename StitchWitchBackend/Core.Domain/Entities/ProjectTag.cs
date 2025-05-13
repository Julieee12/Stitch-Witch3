using System;
using System.Collections.Generic;

namespace Core.Domain.Entities;

public partial class ProjectTag
{
    public string Projectid { get; set; } = null!;

    public string? Tagid { get; set; }

    public virtual Project Project { get; set; } = null!;

    public virtual TagType? Tag { get; set; }
}
