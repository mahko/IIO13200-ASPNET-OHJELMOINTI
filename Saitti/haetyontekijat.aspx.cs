using System;
using System.Configuration; //hakee web.conf tiedostosta dataa
using System.Data; //ADO .net luokkia varten
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class haetyontekijat : System.Web.UI.Page
{
    string xmlfilu;
    protected void Page_Load(object sender, EventArgs e)
    {
        //tässä luetaan web.configista tiedoston nimi
        xmlfilu = ConfigurationManager.AppSettings["tiedosto"];
        lbMessage.Text = xmlfilu;
    }

    protected void btnHae_Click(object sender, EventArgs e)
    {
        //luetaan xml tiedostosta työntekijöiden tiedot ja esitetään gridviewissä
        DataSet ds = new DataSet();
        DataView dv = new DataView();
        DataTable dt = new DataTable();
        ds.ReadXml(Server.MapPath(xmlfilu));
        dt = ds.Tables[0];
        dv = dt.DefaultView;
        //datan sitominen ui kontrolliin
        gvData.DataSource = dv;
        gvData.DataBind();
        lbMessage.Text = string.Format("löytyi {0} työntekijää", dt.Rows.Count);
    }
}