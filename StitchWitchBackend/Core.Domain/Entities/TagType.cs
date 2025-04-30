using System;
using System.Collections.Generic;

namespace Core.Domain.Entities;

public partial class TagType
{
    public string Id { get; set; } = null!;

    public string? Typename { get; set; }

    public virtual ICollection<Tag> Tags { get; set; } = new List<Tag>();
}
