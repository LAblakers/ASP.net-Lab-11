using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Exercise4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
    }
    private void BindGrid()
    {
        using (DataSet ds = new DataSet())
        {
            ds.ReadXml(Server.MapPath("~/books.xml"));
            gridBooks.DataSource = ds;
            gridBooks.DataBind();
        }
        using (DataSet ds = new DataSet())
        {
            ds.ReadXml(Server.MapPath("~/books.xml"));
            repeaterBooks.DataSource = ds;
            repeaterBooks.DataBind();
        }


    }

    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        gridBooks.PageIndex = e.NewPageIndex;
        this.BindGrid();
    }

    






}