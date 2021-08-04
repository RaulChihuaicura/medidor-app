using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidorModel.DAL
{
    public class MedidoresDALDB : IMedidorDAL
    {
        private Medidor_DBEntities medidorDB = new Medidor_DBEntities();
        public List<Medidor> ObtenerMedidores()
        {
            return this.medidorDB.Medidor.ToList();
        }
    }
}
