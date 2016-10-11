using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnHae_Click(object sender, EventArgs e)
    {
        //alkuperainen        
        //string cs = "server=mysql.labranet.jamk.fi;database=H4019;user=H4019;password=h3TEY24Ywps5MBN8uZNjOW3owVaYw3UV";
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["mysli"].ConnectionString;
        DataTable dt = JAMK.ICT.Data.DBPlacebo.getCitiesFromMysql(cs);
        gvMysli.DataSource = dt;
        gvMysli.DataBind();

    }
}