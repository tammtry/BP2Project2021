using SistemZZ_DB.Core.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_DB.Persistance.Repositories
{
    public class SistemZdravstveneZastiteRepository : Repository<SistemZdravstveneZastite>, ISistemZdravstveneZastiteRepository
    {
        public SistemZdravstveneZastiteRepository(SistemZZ_ERModelContainer context) : base(context) { }

        public SistemZZ_ERModelContainer SistemZZ_ERModelContainer
        {
            get { return _context as SistemZZ_ERModelContainer; }
        }

        public List<SistemZdravstveneZastite> GetSistemiZdravstveneZastite()
        {
            return SistemZZ_ERModelContainer.SistemZdravstveneZastite.ToList();
        }

        public SistemZdravstveneZastite GetSZZById(int id)
        {
            return SistemZZ_ERModelContainer.SistemZdravstveneZastite.Where(x => x.ID_SZZ == id).FirstOrDefault();
        }
    }
}
