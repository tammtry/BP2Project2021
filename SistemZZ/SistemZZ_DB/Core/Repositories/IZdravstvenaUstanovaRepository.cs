using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_DB.Core.Repositories
{
    public interface IZdravstvenaUstanovaRepository : IRepository<ZdravstvenaUstanova>
    {
        List<ZdravstvenaUstanova> GetZdravstveneUstanoove();

        ZdravstvenaUstanova GetZUById(int id);
    }
}
