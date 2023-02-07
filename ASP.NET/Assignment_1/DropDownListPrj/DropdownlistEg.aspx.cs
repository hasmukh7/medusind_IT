using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDownListPrj
{
    public partial class DropdownlistEg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GetPriceByName(string Productname)
        {
            string connectionString = "Data Source=LAPTOP-A6J65V4V\\SQLEXPRESS; initial catalog=store;integrated security = true;";
            SqlConnection con = new SqlConnection(connectionString);
            SqlDataAdapter sda = new SqlDataAdapter("getproduct", con);
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            SqlParameter param = new SqlParameter();
            param.ParameterName = "@pname";
            param.Value = Productname;
            sda.SelectCommand.Parameters.Add(param);

            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.MyImage.ImageUrl = "~/Images/" + DropDownList1.SelectedValue + ".jpg";
            GetPriceByName(DropDownList1.SelectedValue);
            Label1.Text = this.GridView1.Rows[0].Cells[0].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}