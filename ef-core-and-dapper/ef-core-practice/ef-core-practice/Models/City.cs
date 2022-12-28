using System;
using System.Collections.Generic;

namespace ef_core_practice.Models;

public partial class City
{
    public int Id { get; set; }

    public string City1 { get; set; } = null!;

    public int StateId { get; set; }

    public virtual State State { get; set; } = null!;
}
