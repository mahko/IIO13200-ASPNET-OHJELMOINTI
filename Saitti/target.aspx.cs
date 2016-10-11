using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class target : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string msg = "";
        //query string
        msg += "<h3>query string</h3>";
        msg += "URL:ssa välitetty viesti:" + Request.QueryString["message"];
        msg += "<br />";
        mytext.InnerHtml = msg;

        //sessio
        msg += "<h3>Session</h3>";
        msg += "sessionilla välitetty viesti:" + Session["message"];
        msg += "<br />";
        mytext.InnerHtml = msg;

        //keksillä
        msg += "<h3>Keksi</h3>";
        msg += "keksillä välitetty viesti:";
        foreach (String keks in Request.Cookies)
        {
            if (keks == "message")
            {
                //msg += Request.Cookies["message"];
                mytext.InnerHtml = msg + Server.HtmlEncode(Request.Cookies["message"].Value);
            }
                
        }
        //vaihtoehto 4 luetaan edellisen sivun property
        /*
        msg += "<h3>Properyn lukeminen</h3>";
        var previouspage = PreviousPage;
        if(previouspage != null)
        {
            msg += "edellisen sivun property:" + previouspage.SecretMessage;

        }
        */
        TextBox txt = (TextBox)Page.PreviousPage.FindControl("txtMessage");
        if (txt != null)
        {
            mytext.InnerHtml = Server.HtmlEncode(txt.Text);

        }
        else
            mytext.InnerHtml = "-----";
    }
}