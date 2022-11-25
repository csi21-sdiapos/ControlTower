﻿using System;
using System.Collections.Generic;

namespace DAL.Modelo;

public partial class DlkInformacional
{
    public string MdUuid { get; set; } = null!;

    public DateTime MdDate { get; set; }

    public string CodEmpleado { get; set; } = null!;

    public string ClaveEmpleado { get; set; } = null!;

    public short NivelAccesoEmpleado { get; set; }
}
