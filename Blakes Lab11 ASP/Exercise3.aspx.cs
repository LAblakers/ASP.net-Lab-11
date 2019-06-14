using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exercise3 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void SubmitBtn_Click(object sender, EventArgs e)   {

        lblLoginSummary.Text += "<br/><b>Login Information:</b><br/> " +
                    "Login: " +  Exercise3UserControl1.Login + "<br/>" +
                    "Password: " +  Exercise3UserControl1.Password;

    }


}