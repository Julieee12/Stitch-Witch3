using System;
using System.Collections.Generic;

namespace Core.Domain.Entities;

public partial class ItemTag
{
    public string Itemid { get; set; } = null!;

    public string? Tagid { get; set; }

    public virtual Item Item { get; set; } = null!;

    public virtual TagType? Tag { get; set; }
}
