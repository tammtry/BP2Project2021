using SistemZZ_DB;
using SistemZZ_DB.Persistance;
using SistemZZ_GUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace SistemZZ_GUI.ViewModels
{
    public class AddEditZdravstvenaUstanovaViewModel : BindableBase
    {
        public Window Window { get; set; }

        UnitOfWork unitOfWork = new UnitOfWork(new SistemZZ_ERModelContainer());

        AppZdravstvenaUstanova zu = new AppZdravstvenaUstanova();

        public AppZdravstvenaUstanova Zu
        {
            get { return zu; }
            set
            {
                zu = value;
                OnPropertyChanged("Zu");
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

        public MyICommand AddEditZdravstvenaUstanovaCommand { get; set; }

        public AddEditZdravstvenaUstanovaViewModel(ZdravstvenaUstanova sistem = null)
        {
            if (sistem == null)
            {
                TextBoxEnabled = true;
                TitleContent = "Add ZU";
                ButtonContent = "Add";
                AddEditZdravstvenaUstanovaCommand = new MyICommand(onAddZdravstvenaUstanova);
            }
            else
            {
                TextBoxEnabled = false;
                zu = new AppZdravstvenaUstanova(sistem);
                TitleContent = "Edit ZU";
                ButtonContent = "Edit";
                AddEditZdravstvenaUstanovaCommand = new MyICommand(onEditZdravstvenaUstanova);
            }
        }

        public void onAddZdravstvenaUstanova(object parameter)
        {
            Zu.Validate();

            if (Zu.IsValid)
            {
                ZdravstvenaUstanova addZu = new ZdravstvenaUstanova();
                addZu.ID_ZU = Zu.ID_ZU;
                addZu.NazivZU = Zu.NazivZU;
                addZu.AdresaZU = Zu.AdresaZU;
                addZu.BrTelZU = Zu.BrTelZU;
                addZu.SistemZdravstveneZastiteID_SZZ = Zu.SistemZdravstveneZastiteID_SZZ;
                unitOfWork.ZdravstveneUstanove.Add(addZu);

                if (unitOfWork.Complete() > 0)
                {
                    Completed = "Completed.";
                    Zu = new AppZdravstvenaUstanova();
                }
            }

        }

        public void onEditZdravstvenaUstanova(object parameter)
        {
            Zu.Validate();
            if(Zu.IsValid)
            {
                ZdravstvenaUstanova editZu = unitOfWork.ZdravstveneUstanove.GetZUById(Zu.ID_ZU);
                editZu.ID_ZU = Zu.ID_ZU;
                editZu.NazivZU = Zu.NazivZU;
                editZu.AdresaZU = Zu.AdresaZU;
                editZu.BrTelZU = Zu.BrTelZU;
                editZu.SistemZdravstveneZastiteID_SZZ = Zu.SistemZdravstveneZastiteID_SZZ;

                unitOfWork.ZdravstveneUstanove.Update(editZu);

                if (unitOfWork.Complete() > 0)
                {
                    Completed = "Completed.";
                    Zu = new AppZdravstvenaUstanova();
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
