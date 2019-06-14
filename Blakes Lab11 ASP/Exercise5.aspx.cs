using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exercise5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txtFirstNumber.Text);
        int b = Convert.ToInt32(txtSecondNumber.Text);
        int c = a + b;
        lblTotalResult.Text = "Total = " + c.ToString();
    }
}