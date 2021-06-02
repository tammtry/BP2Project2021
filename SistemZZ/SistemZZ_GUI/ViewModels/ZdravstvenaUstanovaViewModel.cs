using SistemZZ_DB;
using SistemZZ_DB.Persistance;
using SistemZZ_DB.Persistance.Repositories;
using SistemZZ_GUI.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace SistemZZ_GUI.ViewModels
{
    public class ZdravstvenaUstanovaViewModel : BindableBase
    {
        private readonly Repository<ZdravstvenaUstanova> zuRepo = new Repository<ZdravstvenaUstanova>(new SistemZZ_ERModelContainer());

        UnitOfWork unitOfWork = new UnitOfWork(new SistemZZ_ERModelContainer());
        

        public Window Window { get; set; }
        public MyICommand AddZUCommand { get; set; }
        public MyICommand RefreshZUCommand { get; set; }

        public MyICommand DeleteZUCommand { get; set; }
        public MyICommand EditZUCommand { get; set; }

        private BindingList<ZdravstvenaUstanova> zdravstveneUstanove { get; set; }
        private List<ZdravstvenaUstanova> zdravstveneUstanoveList { get; set; }

        public BindingList<ZdravstvenaUstanova> ZdravstveneUstanove
        {
            get { return zdravstveneUstanove; }
            set
            {
                zdravstveneUstanove = value;
                OnPropertyChanged("ZdravstveneUstanove");
            }
        }

        public ZdravstvenaUstanova SelectedZU { get; set; }

        public ZdravstvenaUstanovaViewModel()
        {
            onRefreshInterface(null);

            RefreshZUCommand = new MyICommand(onRefreshInterface);
            AddZUCommand = new MyICommand(onAddZU);
            EditZUCommand = new MyICommand(onEditZU);
            DeleteZUCommand = new MyICommand(onDeleteZU);

        }

        public void onRefreshInterface(object parameter)
        {
            zdravstveneUstanoveList = zuRepo.GetEntities();
            ZdravstveneUstanove = new BindingList<ZdravstvenaUstanova>();

            foreach (var zu in zdravstveneUstanoveList)
            {
                ZdravstveneUstanove.Add(zu);
            }
        }

        public void onAddZU(object parameter)
        {
            new AddEditZdravstvenaUstanovaView(null).ShowDialog();
        }

        public void onEditZU(object parameter)
        {
            if (SelectedZU != null)
            {
                new AddEditZdravstvenaUstanovaView(SelectedZU).ShowDialog();
            }
            else
            {
                MessageBox.Show("Error. Select first!");
            }
        }

        public void onDeleteZU(object parameter)
        {
            if (SelectedZU == null)
            {
                MessageBox.Show("Error. Select first!");
                return;
            }

            zuRepo.Remove(SelectedZU.ID_ZU);

            if (zuRepo.SaveChanges())
            {
                MessageBox.Show("Deleted!");
                onRefreshInterface(null);
            }
        }


    }
}
