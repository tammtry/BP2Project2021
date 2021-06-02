using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_GUI.Model
{
    public class SistemZdravstveneZastite : INotifyPropertyChanged
    {
        private int id_szz;
        private string naziv_szz;
        private string drzava_szz; 

        public SistemZdravstveneZastite() { }

        public SistemZdravstveneZastite(int id_szz, string naziv_szz, string drzava_szz)
        {
            this.id_szz = id_szz;
            this.naziv_szz = naziv_szz;
            this.drzava_szz = drzava_szz;
        }

        public int ID_SZZ
        {
            get { return id_szz;  }
            set 
            {
                if (id_szz != value)
                {
                    id_szz = value;
                    RaisePropertyChanged("ID_SZZ");
                }
            }
        }

        public string NazivSZZ
        {
            get { return naziv_szz; }
            set
            {
                if (naziv_szz != value)
                {
                    naziv_szz = value;
                    RaisePropertyChanged("NazivSZZ");
                }
            }
        }

        public string DrzavaSZZ
        {
            get { return drzava_szz; }
            set
            {
                if (drzava_szz != value)
                {
                    drzava_szz = value;
                    RaisePropertyChanged("DrzavaSZZ");
                }
            }
        }


        public event PropertyChangedEventHandler PropertyChanged;

        private void RaisePropertyChanged(string property)
        {
            /*if (PropertyChanged != null) 
            {
                PropertyChanged(this, new PropertyChangedEventArgs(property));
            }*/

            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(property));
        }
    }
}
