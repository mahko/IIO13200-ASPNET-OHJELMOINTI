using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class t1_ikkunatarjouslaskuri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLaske_Click(object sender, EventArgs e)
    {
        int witdh;
        int height;
        int frame;
        double area;
        double circ;
        double price;
        witdh = int.Parse(txtWidth.Text);
        height = int.Parse(txtHeight.Text);
        frame = int.Parse(txtFrame.Text);
        area = witdh * height;
        circ = ((witdh * 2) + (height * 2))/1000;
        price =  1.3*((area*45) + (circ * 100) + 150);
        lblArea.Text = area.ToString();
        lblCirc.Text = Convert.ToString(circ);
        lblPrice.Text = Convert.ToString(price);
    }
}