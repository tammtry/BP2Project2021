using SistemZZ_DB.Core;
using SistemZZ_DB.Core.Repositories;
using SistemZZ_DB.Persistance.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_DB.Persistance
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly SistemZZ_ERModelContainer _context;

        public UnitOfWork(SistemZZ_ERModelContainer context)
        {
            _context = context;
            SistemiZdravstveneZastite = new SistemZdravstveneZastiteRepository(context);
            ZdravstveneUstanove = new ZdravstvenaUstanovaRepository(context);

        }

        public ISistemZdravstveneZastiteRepository SistemiZdravstveneZastite { get; set; }
        public IZdravstvenaUstanovaRepository ZdravstveneUstanove { get; set; }

        public int Complete()
        {
            return _context.SaveChanges();
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
