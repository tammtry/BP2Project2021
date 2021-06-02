using SistemZZ_DB;
using SistemZZ_GUI.DataBinding;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_GUI.Models
{
    //AppSistemZdravstveneZastite
    public class AppSistemZdravstveneZastite : ValidationBase
    {
        public int ID_SZZ { get; set; }
        public string NazivSZZ { get; set; }
        public string DrzavaSZZ { get; set; }
    

        public AppSistemZdravstveneZastite()
        {
            ID_SZZ = 0;
            NazivSZZ = "";
            DrzavaSZZ = "";
        }

        
        //VAZNO ZA EDIT!
        public AppSistemZdravstveneZastite(SistemZdravstveneZastite szz)
        {
            ID_SZZ = szz.ID_SZZ;
            NazivSZZ = szz.NazivSZZ;
            DrzavaSZZ = szz.DrzavaSZZ;
        }

      

        //Konstruktor s parametrima dodati po potrebi.

        protected override void ValidateSelf()
        {
            if (ID_SZZ < 0)
            {
                ValidationErrors["ID_SZZ"] = "ID mora biti pozitivan broj.";
            }
        }
    }
}
