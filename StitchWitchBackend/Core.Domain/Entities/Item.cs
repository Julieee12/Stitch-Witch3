using System;
using System.Collections.Generic;

namespace Core.Domain.Entities;

public partial class Item
{
    public string Id { get; set; } = null!;

    public string Name { get; set; } = null!;

    public string? Tag { get; set; }

    public string? Picurl { get; set; }

    public string? Description { get; set; }

    public virtual Tag? TagNavigation { get; set; }
}
