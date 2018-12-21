using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Data.SqlClient;

namespace QLBH.Form
{
    public partial class frmLogin : DevExpress.XtraEditors.XtraForm
    {
        public frmLogin()
        {
            InitializeComponent();
        }

        private void labelControl2_Click(object sender, EventArgs e)
        {

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            SqlConnection Coon = new SqlConnection(@"Data Source=ALOHA\SQLEXPRESS;Initial Catalog=QLBH;Integrated Security=True");
            try
            {
                Coon.Open();
                string tk = txtTk.Text;
                string mk = txtMk.Text;
                string sql = "select *from [tb_login] where TaiKhoan='" + tk + "'  and MatKhau='" + mk + "'";
                SqlCommand cmd = new SqlCommand(sql, Coon);
                SqlDataReader dta = cmd.ExecuteReader();
                if (dta.Read() == true)
                {
                    MessageBox.Show("Đăng nhập thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.Hide();
                    frmMDI ss = new frmMDI();
                    ss.Show();
                }
                else
                {
                    MessageBox.Show("Vui lòng kiểm tra ID và PASSWORD");

                }
            }

            catch (Exception ex)
            {
                string mex = ex.Message;
                MessageBox.Show("Erorr!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn muốn hủy bỏ?", " Xác nhận ", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                this.Close();
        }

        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}