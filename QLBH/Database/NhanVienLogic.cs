using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using QLBH.Object;
using System.Data;

namespace QLBH.Database
{
    class NhanVienLogic
    {
        ConnectToSQL Conn = new ConnectToSQL();
        SqlCommand cmd = new SqlCommand();

        public DataTable GetData()
        {
            DataTable dt = new DataTable();
            cmd.CommandText = "select MaNV, TenNV, GioiTinh, NamSinh, DiaChi, SDT  from tb_NhanVien";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = Conn.Connection;
            try
            {
                Conn.OpenConn();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
            }
            catch (Exception ex)
            {
                string mex = ex.Message;
                cmd.Dispose();
                Conn.CloseConn();
            }
            return dt;
        }

        public bool AddData(NhanVienObj nvObj)
        {
            cmd.CommandText = "Insert into tb_NhanVien values ('" + nvObj.MaNhanVien + "',N'" + nvObj.TenNhanVien + "',CONVERT(DATE,'" + nvObj.NamSinh + "',103),'" + nvObj.SoDienThoai + "')";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = Conn.Connection;
            try
            {
                Conn.OpenConn();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                string mex = ex.Message;
                cmd.Dispose();
                Conn.CloseConn();
            }
            return false;
        }

        public bool UpdData(NhanVienObj nvObj)
        {
            cmd.CommandText = "Update tb_NhanVien set TenNV =  N'" + nvObj.TenNhanVien + "', NamSinh = CONVERT(DATE,'" + nvObj.NamSinh + "',103),SDT = '" + nvObj.SoDienThoai + "' Where MaNV = '" + nvObj.MaNhanVien + "'";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = Conn.Connection;
            try
            {
                Conn.OpenConn();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                string mex = ex.Message;
                cmd.Dispose();
                Conn.CloseConn();
            }
            return false;
        }

        public bool DelData(string ma)
        {
            cmd.CommandText = "Delete tb_NhanVien Where MaNV = '" + ma + "'";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = Conn.Connection;
            try
            {
                Conn.OpenConn();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                string mex = ex.Message;
                cmd.Dispose();
                Conn.CloseConn();
            }
            return false;
        }
    }
}
