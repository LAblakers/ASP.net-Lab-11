using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exercise3UserControl : System.Web.UI.UserControl
{
    public String Caption = "A Login User Control";
    public String Login
    {
        get
        {
            return txtLogin.Text;
        }
        set
        {
            txtLogin.Text = value;
        }
    }

    public String Password
    {
        get
        {
            return txtPassWord.Text;
        }
        set
        {
            txtPassWord.Text = value;
        }
    }

}