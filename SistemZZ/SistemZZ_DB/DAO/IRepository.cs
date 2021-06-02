using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_DB.DAO
{
    public interface IRepository<TEntity> where TEntity : class
    {
        List<TEntity> GetEntities();
    }
}
