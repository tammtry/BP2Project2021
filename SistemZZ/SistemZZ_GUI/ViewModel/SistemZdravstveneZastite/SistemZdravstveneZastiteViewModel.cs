using SistemZZ_DB.DAO;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace SistemZZ_GUI.ViewModel.SistemZdravstveneZastite
{
    public class SistemZdravstveneZastiteViewModel : BindableBase
    {
        public static List<SistemZZ_DB.SistemZdravstveneZastite> Lista_sistemaZZ { get; set; }
        public static ObservableCollection<Model.SistemZdravstveneZastite> ListaSistemaZdravstveneZastite { get; set; }

        public SistemZdravstveneZastiteViewModel()
        {
            ListaSistemaZdravstveneZastite = new ObservableCollection<Model.SistemZdravstveneZastite>();

        }

        public void UcitajSistemeZdravstveneZastite()
        {
            //Calls method from applicaton layer and gets entities from database.
            SistemDAO sistemZdravstveneZastiteDAO = new SistemDAO();
            Lista_sistemaZZ = sistemZdravstveneZastiteDAO.GetEntities();
    
            for (int i = 0; i < Lista_sistemaZZ.Count; i++)
            {
                ListaSistemaZdravstveneZastite.Add(new Model.SistemZdravstveneZastite()
                {
                    ID_SZZ = Lista_sistemaZZ[i].ID_SZZ,
                    NazivSZZ = Lista_sistemaZZ[i].NazivSZZ,
                    DrzavaSZZ = Lista_sistemaZZ[i].DrzavaSZZ
                });
            }
        }
    }
}
