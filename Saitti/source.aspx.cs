using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class source : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //alustetaan kontrollit vain kerran
        if (!IsPostBack)
        { 
        ddlMessage.Items.Add("Hello!");
        ddlMessage.Items.Add("second");
        ddlMessage.Items.Add("third");
        }
    }

    protected void btnQuery_Click(object sender, EventArgs e)
    {
        //responce redirect
        Response.Redirect("target.aspx&message=" + txtMessage);


    }

    protected void btnSession_Click(object sender, EventArgs e)
    {
        //sesssion
        Session["message"] = txtMessage.Text;
        Response.Redirect("target.aspx");
    }

    protected void btnCookie_Click(object sender, EventArgs e)
    {
        //luodaan keksi ja kirjoitetaan siihen viesti
        HttpCookie cookie = new HttpCookie("message", txtMessage.Text);
        cookie.Expires = DateTime.Now.AddDays(1);
        Response.Cookies.Add(cookie);
    }

    protected void btnPubliic_Click(object sender, EventArgs e)
    {
        Server.Transfer("target.aspx");

    }

    protected void ddlMessage_SelectedIndexChanged(object sender, EventArgs e)
    {
        //text boxiin listalta arvo
        txtMessage.Text = ddlMessage.SelectedItem.ToString();
    }
}