using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLBH.Object
{
    class HoaDonObj
    {
        string mahd, manv, makh, ngaylap;

        public string MaHoaDon
        {
            get
            {
                return mahd;
            }

            set
            {
                mahd = value;
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

        public string MaNhanVien
        {
            get
            {
                return manv;
            }

            set
            {
                manv = value;
            }
        }

        public string Ngaylap
        {
            get
            {
                return ngaylap;
            }

            set
            {
                ngaylap = value;
            }
        }

        public HoaDonObj() { }
        public HoaDonObj(string mahd, string ngaylap, string manv, string makh)
        {
            this.mahd = mahd;
            this.ngaylap = ngaylap;
            this.manv = manv;
            this.makh = makh;
        }
    }
}
