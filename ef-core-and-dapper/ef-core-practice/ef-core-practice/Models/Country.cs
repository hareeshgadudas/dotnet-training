using System;
using System.Collections.Generic;

namespace ef_core_practice.Models;

public partial class Country
{
    public int Id { get; set; }

    public string CountryCode { get; set; } = null!;

    public string Name { get; set; } = null!;

    public virtual ICollection<State> States { get; } = new List<State>();
}
