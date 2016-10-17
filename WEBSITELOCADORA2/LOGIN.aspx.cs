using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LOGIN : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void btnok_Click(object sender, EventArgs e)
    {
        Session["log"] = txtlogin.Text;
        Response.Redirect("editar.aspx");
    }
}