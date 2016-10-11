using System;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HaeOppilaat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGet3_Click(object sender, EventArgs e)
    {
       // getTable dt = JAMK.ICT.Data.GetAllStudents;

    }
    protected void btnGetAll_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings("oppilaat").ConnectionString;
        try
        {
            DataTable dt = JAMK.ICT.Data.DBPlacebo.GetAllStudentsFromSQLServer("", "oppilaat", out messu);

        }
        catch(Exception ex)
        {
            //tänne viesti
        }
    }

    protected void tnGet3BL_Click(object sender, EventArgs e)
    {
        var oppilas = new JAMK.ICT.BL.Oppilaat().Hae3TestiOppilasta();
        gvStudents.DataSource
    }
}