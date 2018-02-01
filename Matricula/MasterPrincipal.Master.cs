using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matricula
{
    public partial class MasterPrincipal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgButtonEstudiantes_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("./Estudiantes.aspx");
        }

        protected void imgButtonMaterias_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("./Materias.aspx");
        }

        protected void Image1_DataBinding(object sender, EventArgs e)
        {
            Response.Redirect("./Default.aspx");
        }
    }
}