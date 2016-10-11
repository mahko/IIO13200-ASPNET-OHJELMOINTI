using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JAMK.IT
{ 
/// <summary>
/// Summary description for Json
/// </summary>

public class Json
{
    public string Name { get; set; }
    public string Gender { get; set; }
    public string Birthday { get; set; }
    public Json()
    {

    }
}

public class Politician : Json
    {
        public string Party { get; set; }
        public string Position { get; set; }
    }
}