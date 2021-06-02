using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_DB.Core.Repositories
{
    public interface ISistemZdravstveneZastiteRepository : IRepository<SistemZdravstveneZastite>
    {
        List<SistemZdravstveneZastite> GetSistemiZdravstveneZastite();

        //void DeleteZZById(int szzId);

        SistemZdravstveneZastite GetSZZById(int id);
    }
}
