using SistemZZ_DB.Persistance;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using SistemZZ_DB;
using SistemZZ_GUI.Models;

namespace SistemZZ_GUI.ViewModels
{
    public class AddEditSistemiZdravstveneZastiteViewModel : BindableBase
    {
        public Window Window { get; set; }

        UnitOfWork unitOfWork = new UnitOfWork(new SistemZZ_ERModelContainer());


        AppSistemZdravstveneZastite szz = new AppSistemZdravstveneZastite();

        public AppSistemZdravstveneZastite Szz
        {
            get { return szz; }
            set
            {
                szz = value;
                OnPropertyChanged("Szz");
            }
        }

        bool textBoxEnabled;

        public bool TextBoxEnabled
        {
            get { return textBoxEnabled; }
            set
            {
                textBoxEnabled = value;
                OnPropertyChanged("TextBoxEnabled");

            }
        }

        string titleContent;
        public string TitleContent
        {
            get { return titleContent; }
            set
            {
                titleContent = value;
                OnPropertyChanged("TitleContent");
            }
        }

        string buttonContent;
        public string ButtonContent
        {
            get { return buttonContent; }
            set
            {
                buttonContent = value;
                OnPropertyChanged("ButtonContent");
            }
        }

        public MyICommand AddEditSistemZdravstveneZastiteCommand { get; set; }

        public AddEditSistemiZdravstveneZastiteViewModel(SistemZdravstveneZastite sistem = null)
        {
            if(sistem == null)
            {
                TextBoxEnabled = true;
                TitleContent = "Add SZZ";
                ButtonContent = "Add";
                AddEditSistemZdravstveneZastiteCommand = new MyICommand(onAddSistemZdravstveneZastite);
            } 
            else
            {
                TextBoxEnabled = false;
                szz = new AppSistemZdravstveneZastite(sistem);
                TitleContent = "Edit SZZ";
                ButtonContent = "Edit";
                AddEditSistemZdravstveneZastiteCommand = new MyICommand(onEditSistemZdravstveneZastite);
            }
        
        }

        //Dodavanje novog Sistema Zdravstvene Zastute u bazu.
        public void onAddSistemZdravstveneZastite(object parameter)
        {
            Szz.Validate();

            if(Szz.IsValid)
            {
                SistemZdravstveneZastite addSzz = new SistemZdravstveneZastite();
                addSzz.ID_SZZ = Szz.ID_SZZ;
                addSzz.NazivSZZ = Szz.NazivSZZ;
                addSzz.DrzavaSZZ = Szz.DrzavaSZZ;
                unitOfWork.SistemiZdravstveneZastite.Add(addSzz);

                if (unitOfWork.Complete() > 0)
                {
                    Completed = "Completed.";
                    Szz = new AppSistemZdravstveneZastite();
                }
            }
      
        }

        public void onEditSistemZdravstveneZastite(object parameter)
        {
            Szz.Validate();

            if (Szz.IsValid)
            {
                SistemZdravstveneZastite editSzz = unitOfWork.SistemiZdravstveneZastite.GetSZZById(Szz.ID_SZZ);

                editSzz.ID_SZZ = Szz.ID_SZZ;
                editSzz.NazivSZZ = Szz.NazivSZZ;
                editSzz.DrzavaSZZ = Szz.DrzavaSZZ;

                unitOfWork.SistemiZdravstveneZastite.Update(editSzz);

                if (unitOfWork.Complete() > 0)
                {
                    Completed = "Completed.";
                    Szz = new AppSistemZdravstveneZastite();
                }

            }

        }

        string completed;
        public string Completed
        {
            get { return completed; }
            set
            {
                completed = value;
                OnPropertyChanged("Completed");
            }
        }

    }
}
