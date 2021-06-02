using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_DB.DAO
{
    public class SistemDAO
    {
        //Methods that base class contains not.
        public List<SistemZdravstveneZastite> GetEntities()
        {
            using (var db = new SistemZZ_ERModelContainer())
            {
                return db.SistemZdravstveneZastite.ToList();
            }
        }
    }
}
