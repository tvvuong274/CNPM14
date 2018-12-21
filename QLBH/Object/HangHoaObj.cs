﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLBH.Object
{
    class HangHoaObj
    {
        string ma, ten;
        int dongia;

        public string MaHangHoa
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

        public string TenHangHoa
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

        public int DonGia
        {
            get
            {
                return dongia;
            }

            set
            {
                dongia = value;
            }
        }
        public HangHoaObj() { }
        public HangHoaObj(string ma, string ten, int dongia, int soluong)
        {
            this.ma = ma;
            this.ten = ten;
            this.dongia = dongia;
            
        }
    }
}
