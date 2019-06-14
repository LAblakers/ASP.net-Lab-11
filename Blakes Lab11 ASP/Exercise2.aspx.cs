using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exercise2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Registration Form * COLOR Red
        lblUserNameStar.ForeColor = System.Drawing.Color.Red;
        lblPassWordStar.ForeColor = System.Drawing.Color.Red;
        lblConfirmPassWordStar.ForeColor = System.Drawing.Color.Red;
        lblEmailStar.ForeColor = System.Drawing.Color.Red;

        //prevent a password input from clearing after submit
        string Password = txtPassWord.Text;
        txtPassWord.Attributes.Add("value", Password);

        //prevent a confirm password input from clearing after submit
        string ConfirmPassword = txtConfirmPassWord.Text;
        txtConfirmPassWord.Attributes.Add("value", ConfirmPassword);
    }

    protected void BtnSubmit_RegisterUser(object sender, EventArgs e)
    {
        string Username = txtUserName.Text;
        string Password = txtPassWord.Text;
        string ConfirmPassword = txtConfirmPassWord.Text;
        string Email = txtEmail.Text;

    }


}