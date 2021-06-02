using SistemZZ_DB.Core.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_DB.Persistance.Repositories
{
    public class ZdravstvenaUstanovaRepository : Repository<ZdravstvenaUstanova>, IZdravstvenaUstanovaRepository
    {
        public ZdravstvenaUstanovaRepository(SistemZZ_ERModelContainer context) : base(context) { }

        public SistemZZ_ERModelContainer SistemZZ_ERModelContainer
        {
            get { return _context as SistemZZ_ERModelContainer; }
        }


        public List<ZdravstvenaUstanova> GetZdravstveneUstanoove()
        {
            return SistemZZ_ERModelContainer.ZdravstvenaUstanova.ToList();
        }

        public ZdravstvenaUstanova GetZUById(int id)
        {
            return SistemZZ_ERModelContainer.ZdravstvenaUstanova.Where(x => x.ID_ZU == id).FirstOrDefault();
        }
    }
}
