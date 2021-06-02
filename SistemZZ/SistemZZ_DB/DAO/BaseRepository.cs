using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_DB.DAO
{
    public abstract class BaseRepository<TEntity> : IRepository<TEntity> where TEntity : class 
    {
        public List<TEntity> GetEntities()
        {
            using (var db = new SistemZZ_ERModelContainer())
            {
                return db.Set<TEntity>().ToList();
            }
        }
    }
}
