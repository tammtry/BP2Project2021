using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_DB.Core.Repositories
{
    public interface IRepository<TEntity> where TEntity : class
    {
        List<TEntity> GetEntities();

        TEntity Get(int id);

        void Add(TEntity entity);

        void Remove(int id);

        void Update(TEntity entityToUpdate);

        bool SaveChanges();
    }
}
