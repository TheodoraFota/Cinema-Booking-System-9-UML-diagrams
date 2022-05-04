using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CinemaBookingSystem1
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Your booking almost done!Check your email and follow the steps to complete the payment.");
        }

        private void checkedListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void Form2_Load(object sender, EventArgs e)
        {

            NpgsqlConnection conn = new NpgsqlConnection("Server = 127.0.0.1; User Id = postgres; " + "Password =theodwrasofia3; Database = Cinema; ");
            try
            {

                // Connect to a PostgreSQL database

                conn.Open();
                // Define a query
                NpgsqlCommand command = new NpgsqlCommand("SELECT title FROM movies", conn);

                NpgsqlDataReader dr = command.ExecuteReader();

                while (dr.Read())
                {

                    checkedListBox1.Items.Add(dr.GetString(0).ToString());


                };
                dr.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {

                conn.Close();
            }
        }
    }
}
