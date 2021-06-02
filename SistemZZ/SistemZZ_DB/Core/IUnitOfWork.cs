using SistemZZ_DB.Core.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_DB.Core
{
    public interface IUnitOfWork : IDisposable
    {
        ISistemZdravstveneZastiteRepository SistemiZdravstveneZastite { get; }
        IZdravstvenaUstanovaRepository ZdravstveneUstanove { get; }

        int Complete();
    }
}
