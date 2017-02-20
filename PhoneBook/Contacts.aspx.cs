using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;
using PhoneBook.DAL;

namespace PhoneBook
{
    public partial class Contacts : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add Contact.aspx");

        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            int contactid = Convert.ToInt32(Request.QueryString["ContactID"]);
            Session["ContactID"] = contactid;
            Response.Redirect("EditContact.aspx");


        }

        protected void imgDeleteButton_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton ibtn1 = sender as ImageButton;
            int contactid = Convert.ToInt32(ibtn1.Attributes["RowIndex"]);
            
            MYDAL MyobjDal = new MYDAL();
            MyobjDal.DeleteContact(contactid);
            MessageBox.Show("Contact Deleted");
            Response.Redirect("Contacts.aspx");

        }
        public DataTable ReturnEmptyDataTable()
        {

            var Id = new DataColumn("ContactID", typeof(int))
            {
                ReadOnly = true,
                Caption = "ID",
                AllowDBNull = false,
                Unique = true,
                AutoIncrement = true,
                AutoIncrementSeed = 1,
                AutoIncrementStep = 1
            };

            var ques = new DataColumn("ques", typeof(string));
            var option1 = new DataColumn("option1", typeof(string));
            var option2 = new DataColumn("option2", typeof(string));
            var option3 = new DataColumn("option3", typeof(string));
            var option4 = new DataColumn("option4", typeof(string));
            var correctans = new DataColumn("correctans", typeof(string));

            dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[] { Id, ques, option1, option2, option3, option4, correctans });
            DataRow dr = dt.NewRow();

            dt.Rows.Add(dr);
            return dt;
        }


    }
}