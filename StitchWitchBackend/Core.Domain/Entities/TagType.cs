using System;
using System.Collections.Generic;

namespace Core.Domain.Entities;

public partial class TagType
{
    public string Id { get; set; } = null!;

    public string? Typename { get; set; }

    public virtual ICollection<ItemTag> ItemTags { get; set; } = new List<ItemTag>();

    public virtual ICollection<ProjectTag> ProjectTags { get; set; } = new List<ProjectTag>();
}
