using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;


namespace PhoneBook.DAL
{
    public class MYDAL
    {

        private static readonly string connString =
            System.Configuration.ConfigurationManager.ConnectionStrings["PhonebookConnectionString"].ConnectionString;


        public int InsertContact(string a, string b, string c, string d, string e,string f,string g,int status)
        {
            g = null;
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            int returnvalue = 0;
            try
            {
                cmd = new SqlCommand("insertcontact", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@firstname", SqlDbType.VarChar).Value = a;
                cmd.Parameters.AddWithValue("@lastname", SqlDbType.VarChar).Value = b;
                cmd.Parameters.AddWithValue("@website", SqlDbType.VarChar).Value = c;
                cmd.Parameters.AddWithValue("@mobile", SqlDbType.VarChar).Value = d;
                cmd.Parameters.AddWithValue("@address", SqlDbType.VarChar).Value = e;
                cmd.Parameters.AddWithValue("@type", SqlDbType.VarChar).Value = f;
                //cmd.Parameters.Add("@photos", SqlDbType.VarBinary).Value =g ;
                

                returnvalue = cmd.ExecuteNonQuery();


                if (returnvalue > 0)
                {
                    return returnvalue;
                }
                else
                {

                    return 0;
                }




            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return returnvalue;


        }

        public int DeleteContact(int contactID)
        {
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            int returnvalue = 0;
            try
            {
                cmd = new SqlCommand("deletecontact", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@contactid", SqlDbType.Int).Value = contactID;
             

                returnvalue = cmd.ExecuteNonQuery();


                if (returnvalue > 0)
                {
                    return returnvalue;
                }
                else
                {

                    return 0;
                }




            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return returnvalue;
        }



    }

}