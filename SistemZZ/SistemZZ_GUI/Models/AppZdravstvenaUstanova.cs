using SistemZZ_DB;
using SistemZZ_GUI.DataBinding;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_GUI.Models
{
    public class AppZdravstvenaUstanova : ValidationBase
    {
        public int ID_ZU { get; set; }
        public string NazivZU { get; set; }
        public string AdresaZU { get; set; }
        public string BrTelZU { get; set; }
        public int SistemZdravstveneZastiteID_SZZ { get; set; }


        public AppZdravstvenaUstanova()
        {
            ID_ZU = 0;
            NazivZU = "";
            AdresaZU = "";
            BrTelZU = "";
            SistemZdravstveneZastiteID_SZZ = 0;
        }

        public AppZdravstvenaUstanova(ZdravstvenaUstanova zu)
        {
            ID_ZU = zu.ID_ZU;
            NazivZU = zu.NazivZU;
            AdresaZU = zu.AdresaZU;
            BrTelZU = zu.BrTelZU;
            SistemZdravstveneZastiteID_SZZ = zu.SistemZdravstveneZastiteID_SZZ;
        }

        protected override void ValidateSelf()
        {
            if (ID_ZU < 0)
            {
                ValidationErrors["ID_ZU"] = "ID mora biti pozitivan broj.";
            }
        }
    }
}

