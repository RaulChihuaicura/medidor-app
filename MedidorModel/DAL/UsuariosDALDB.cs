using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidorModel.DAL
{
    public class UsuariosDALDB : IUsuarioDAL
    {
        private Medidor_DBEntities medidorDB = new Medidor_DBEntities();
        public void AgregarUsuario(Usuario usuario)
        {
            this.medidorDB.Usuarios.Add(usuario);
            this.medidorDB.SaveChanges();
        }

        public void EliminarUsuario(int id)
        {
            //Buscar usuario asociado al ID
            Usuario usuario = this.medidorDB.Usuarios.Find(id);
            //Eliminar al usuario
            this.medidorDB.Usuarios.Remove(usuario);
            this.medidorDB.SaveChanges();
        }

        public Usuario Obtener(int id)
        {
            return this.medidorDB.Usuarios.Find(id);
        }

        public void Actualizar(Usuario a)
        {
            Usuario aOriginal = this.medidorDB.Usuarios.Find(a.Id);
            aOriginal.Estado = a.Estado;
            aOriginal.Nombres = a.Nombres;
            this.medidorDB.SaveChange();
        }
        public List<Usuario> ObtenerUsuarios()
        {
            return this.medidorDB.Usuarios.ToList();
        }

        public List<Usuario> ObtenerUsuarios(string estado)
        {
            //LINQ
            var query = from a in this.medidorDB.Usuarios
                        where a.Estado == estado
                        select a;
            return query.ToList();
        }
    }
}
