using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Prestamos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.resetForm();
        }

        protected void calcular_Prestamo(object sender, EventArgs e)
        {
            if (this.validarCampos()) {
                DateTime fecha = DateTime.Today;
                float Montovalido;
                float intValido;
                int Ct;
                float.TryParse(Monto.Text, out Montovalido);
                float.TryParse(Intereses.Text, out intValido);
                int.TryParse(Cuotas.SelectedValue,out Ct);

                intValido = Montovalido*(intValido/100);
                Montovalido = Montovalido / Ct;

                for (int x = 0; x < Ct; x++)
                {
                    CuotasP.InnerHtml += $"<div class='ctPago'>" +
                                        $"<p>{x + 1}</p>" +
                                        $"<p>{Montovalido + intValido}</p>" +
                                        $"<p>{ fecha.AddMonths(x).ToString() }</p>" +
                                        $"<p>{ intValido }</p>" +
                                        $"</div>";
                }

            }

        }
        private bool validarCampos()
        {
            bool v;
            float montoValido;
            float impValido;
            if (Nombre.Text == "" || Apellidos.Text == "" )
            {
                return false;
            }
            else if((v = float.TryParse(Monto.Text,out montoValido)) == false)
            {
                return false;
            }
            else if ((v = float.TryParse(Intereses.Text, out impValido)) == false)
            {
                return false;
            }
            else if(Cuotas.SelectedValue == "0"){
                return false;
            }
            return true;
        }
        protected void limpiar(object sender, EventArgs e)
        {
            this.resetForm();
        }
        private void resetForm()
        {
            Intereses.Text = "";
            CuotasP.InnerHtml = "";
            Nombre.Text = "";
            Apellidos.Text = "";
            Monto.Text = "";
            Cuotas.SelectedValue = "0";
        }
    }
}