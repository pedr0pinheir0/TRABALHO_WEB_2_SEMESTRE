using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbleditar.Text = Session["log"].ToString();
            Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme();
            grvFilmes.DataSource = bllFilme.Select();
            grvFilmes.DataBind();
            Cache["OP"] = "X";
            habilitaCampos(false);
        }
    }
    protected void habilitaCampos(bool status)
    {
        if (Cache["OP"].ToString() != "E")
        {
            lblid.Text = "";
            txttitulo.Text = "";
            txtgenero.Text = "";
            txtquantidade.Text = "";
            txtvalor.Text = "";

        }

        txtgenero.Enabled = status;
        txtquantidade.Enabled = status;
        txttitulo.Enabled = status;
        txtvalor.Enabled = status;

        btninserir.Enabled = !status;
        btneditar.Enabled = !status;
        btnremover.Enabled = !status;
        btngravar.Enabled = status;
        btncancelar.Enabled = status;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btninserir_Click(object sender, EventArgs e)
    {
        Cache["OP"] = "I";
        habilitaCampos(true);
        lblid.Text = "-1";
        txttitulo.Focus();

    }

    protected void btngravar_Click(object sender, EventArgs e)
    {
        Locadora.Camadas.MODEL.Filme filme = new Locadora.Camadas.MODEL.Filme();
        Locadora.Camadas.BLL.Filme bllfilme = new Locadora.Camadas.BLL.Filme();

        filme.id = Convert.ToInt32(lblid.Text);
        filme.titulo = txttitulo.Text;
        filme.genero = txtgenero.Text;
        filme.quantidade = Convert.ToInt32(txtquantidade.Text);
        filme.valor = Convert.ToSingle(txtvalor.Text);

        if (Cache["OP"].ToString() == "I")
            bllfilme.Insert(filme);
        else if (Cache["OP"].ToString() == "E")
            bllfilme.Update(filme);

        grvFilmes.DataSource = bllfilme.Select();
        grvFilmes.DataBind();

        if (Cache["OP"].ToString() == "I")
            grvFilmes.SetPageIndex(grvFilmes.PageCount);        

        Cache["OP"] = "X";
        habilitaCampos(false);
    }

    protected void btncancelar_Click(object sender, EventArgs e)
    {
        Cache["OP"] = "X";
        habilitaCampos(false);
    }

    protected void grvFilmes_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Locadora.Camadas.BLL.Filme bllfilme = new Locadora.Camadas.BLL.Filme();
        grvFilmes.DataSource = bllfilme.Select();
        grvFilmes.PageIndex = e.NewPageIndex;
        grvFilmes.DataBind();
    }

    protected void grvFilmes_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            GridViewRow linha = grvFilmes.Rows[Convert.ToInt32(e.CommandArgument)];
            lblid.Text = linha.Cells[0].Text;
            txttitulo.Text = linha.Cells[1].Text;
            txtgenero.Text = linha.Cells[2].Text;
            txtquantidade.Text = linha.Cells[3].Text;
            txtvalor.Text = linha.Cells[4].Text;
        }
    }

    protected void btneditar_Click(object sender, EventArgs e)
    {
        if (lblid.Text != String.Empty)
            if (Convert.ToInt32(lblid.Text) > 0)
            {
                Cache["OP"] = "E";
                habilitaCampos(true);
                txttitulo.Focus();
            }
    }

    protected void btnremover_Click(object sender, EventArgs e)
    {
        if (lblid.Text != String.Empty)
            if (Convert.ToInt32(lblid.Text) > 0)
            {
                Locadora.Camadas.BLL.Filme bllfilme = new Locadora.Camadas.BLL.Filme();
                Locadora.Camadas.MODEL.Filme filme = new Locadora.Camadas.MODEL.Filme();
                filme.id = Convert.ToInt32(lblid.Text);
                bllfilme.Delete(filme);

                grvFilmes.DataSource = bllfilme.Select();
                grvFilmes.DataBind();

                Cache["OP"] = "X";
                habilitaCampos(false);
                
            }

    }
}