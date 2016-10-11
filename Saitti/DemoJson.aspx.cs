using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using JAMK.IT;
using Newtonsoft;

public partial class DemoJson : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGet_Click(object sender, EventArgs e)
    {
        //haetaan json ja näytetään UI:ssa
        string json = GetJsonFrom("http://student.labranet.jamk.fi/~salesa/mat/JsonTestP");
        ltResult.Text = json;
    }
    protected string GetJsonFrom(string url)
    {
        try
        {
            using (WebClient wc = new WebClient())
            {
                var json = wc.DownloadString(url);
                return json;
            }
        }
        catch(Exception ex) {
            ltResult.Text = ex.Message;
            throw;
        }

    }

    protected void btnGetPerson_Click(object sender, EventArgs e)
    {
        //muutetaan luettu json person olioksi
        try
        {
            using (WebClient wc = new WebClient())
            {
                String json = wc.DownloadString("http://student.labranet.jamk.fi/~salesa/mat/JsonTestP");
                JAMK.IT.Json p = Newtonsoft.Json.JsonConvert.DeserializeObject<Json>(json);
                ltResult.Text = string.Format("löytyi henkilö{0} syntyny{1}", p.Name, p.Birthday);
            }
        }
        catch (Exception ex)
        {
            ltResult.Text = ex.Message;
            throw;
        }
    }

    protected void btnGetPolitics_Click(object sender, EventArgs e)
    {
        //muutetaan json politician oliokokoelmaksi
        try
        {
            using (WebClient wc = new WebClient())
            {
                String json = wc.DownloadString("http://student.labranet.jamk.fi/~salesa/mat/JsonTestP");

                JAMK.IT.Json p = Newtonsoft.Json.JsonConvert.DeserializeObject();

                string ret = "<h2>suomen vankka hallitus</h2>";
                foreach(var ministeri in hallitus)
                {
                    ret += "<li>" + ministeri.Name
                        + " " + ministeri.Party;

                }
                ltResult.Text = string.Format("löytyi henkilö{0} syntyny{1}", p.Name, p.Birthday);
            }
        }
        catch (Exception ex)
        {
            ltResult.Text = ex.Message;
            throw;
        }
    }
}