using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLBH.Object
{
    class NhanVienObj
    {
        string ma, ten, sdt, taiKhoan, namsinh;

        public string MaNhanVien
        {
            get
            {
                return ma;
            }

            set
            {
                ma = value;
            }
        }

        public string NamSinh
        {
            get
            {
                return namsinh;
            }

            set
            {
                namsinh = value;
            }
        }

        public string SoDienThoai
        {
            get
            {
                return sdt;
            }

            set
            {
                sdt = value;
            }
        }

        public string TaiKhoan
        {
            get
            {
                return taiKhoan;
            }

            set
            {
                taiKhoan = value;
            }
        }

        public string TenNhanVien
        {
            get
            {
                return ten;
            }

            set
            {
                ten = value;
            }
        }

        public NhanVienObj() { }
        public NhanVienObj(string ma, string ten, string gioitinh, string namsinh, string diachi, string sdt)
        {
            this.ma = ma;
            this.ten = ten;
            this.namsinh = namsinh;
            this.sdt = sdt;
        }
    }
}
