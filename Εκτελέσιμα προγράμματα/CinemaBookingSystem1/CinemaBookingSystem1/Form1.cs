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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            String email = textBox1.Text;
            String password = textBox2.Text;
            NpgsqlConnection conn = new NpgsqlConnection("Server = 127.0.0.1; User Id = postgres; " + "Password = theodwrasofia3; Database =Cinema ");
            try
            {

                // Connect to a PostgreSQL database

                conn.Open();
                // Define a query
                NpgsqlCommand command = new NpgsqlCommand("SELECT email, password FROM customer where email= " + $"'{email}'" + " and password= " + $"'{password}'", conn);

                NpgsqlDataReader dr = command.ExecuteReader();
                if (dr.Read())
                {

                    this.Hide();
                    Form2 form2 = new Form2();

                    form2.Show();
                }
                else
                    MessageBox.Show("Email or Password Not Found");


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
