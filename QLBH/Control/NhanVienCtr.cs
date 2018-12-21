using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using QLBH.Object;
using QLBH.Database;

namespace QLBH.Control
{
    class NhanVienCtr
    {
        NhanVienLogic nvMod = new NhanVienLogic();
        public DataTable GetData()
        {
            return nvMod.GetData();
        }
        public bool AddData(NhanVienObj nvObj)
        {
            return nvMod.AddData(nvObj);
        }
        public bool UpdData(NhanVienObj nvObj)
        {
            return nvMod.UpdData(nvObj);
        }

        public bool DelData(string ma)
        {
            return nvMod.DelData(ma);
        }
    }
}
