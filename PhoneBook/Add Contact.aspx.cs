using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using PhoneBook.DAL;


namespace PhoneBook
{
    public partial class Add_Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string _Firstname = fname.Text.ToString();

            string _lastname = lname.Text.ToString();
            string _Email = emailid.Text.ToString();
            string _Website = website.Text.ToString();
            string _Phoneno = phone.Text.ToString();
            string _type = DropDownList1.Text.ToString();
            string _Address = address.Text.ToString();
            string _Photos = null;
            int _Status = 0;

            MYDAL MyobjDal = new MYDAL();
            _Status = MyobjDal.InsertContact(_Firstname, _lastname, _Website, _Phoneno, _Address, _type, _Photos, _Status);

            if (_Status == 1)
            {
                string script = "alert(\"Hello!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
                Response.Redirect("Contacts.aspx");


                return;

                //form1.InnerHtml = Convert.ToString("Login Successful!");
            }
            else
            {


            }


        }

    }

}