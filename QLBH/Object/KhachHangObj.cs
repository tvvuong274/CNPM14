using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLBH.Object
{
    class KhachHangObj
    {
        string makh, tenkh, diachi, sdt;

        public string DiaChi
        {
            get
            {
                return diachi;
            }

            set
            {
                diachi = value;
            }
        }

        public string MaKhachHang
        {
            get
            {
                return makh;
            }

            set
            {
                makh = value;
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

        public string TenKhachHang
        {
            get
            {
                return tenkh;
            }

            set
            {
                tenkh = value;
            }
        }

        public KhachHangObj() { }
        public KhachHangObj(string makh, string tenkh, string diachi, string sdt)
        {
            this.makh = makh;
            this.tenkh = tenkh;
            this.diachi = diachi;
            this.sdt = sdt;
        }
    }
}
