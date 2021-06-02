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
    public class SistemZdravstveneZastiteViewModel : BindableBase
    {
        private readonly Repository<SistemZdravstveneZastite> szzRepo = new Repository<SistemZdravstveneZastite>(new SistemZZ_ERModelContainer());
        UnitOfWork unitOfWork = new UnitOfWork(new SistemZZ_ERModelContainer());
        public Window Window { get; set; }
        public MyICommand AddSZZCommand { get; set; }
        public MyICommand RefreshSZZCommand { get; set; }

        public MyICommand DeleteSZZCommand { get; set; }
        public MyICommand EditSZZCommand { get; set; }


        private BindingList<SistemZdravstveneZastite> sistemiZdravstveneZastite { get; set; }
        private List<SistemZdravstveneZastite> sistemiZdravstveneZastiteList { get; set; }

        public BindingList<SistemZdravstveneZastite> SistemiZdravstveneZastite
        {
            get { return sistemiZdravstveneZastite; }
            set
            {
                sistemiZdravstveneZastite = value;
                OnPropertyChanged("SistemiZdravstveneZastite");
            }
        }

        //Selektovan SZZ za idit ili brisanje.
        public SistemZdravstveneZastite SelectedSZZ { get; set; }

        public SistemZdravstveneZastiteViewModel()
        {
            onRefreshInterface(null);

            RefreshSZZCommand = new MyICommand(onRefreshInterface);
            AddSZZCommand = new MyICommand(onAddSZZ);
            EditSZZCommand = new MyICommand(onEditSZZ);
            DeleteSZZCommand = new MyICommand(onDeleteSZZ);

        }

        public void onRefreshInterface(object parameter)
        {
            sistemiZdravstveneZastiteList = szzRepo.GetEntities();
            SistemiZdravstveneZastite = new BindingList<SistemZdravstveneZastite>();

            foreach (var szz in sistemiZdravstveneZastiteList)
            {
                SistemiZdravstveneZastite.Add(szz);
            }    
        }

        public void onAddSZZ(object parameter)
        {
            new AddEditSistemiZdravstveneZastiteView(null).ShowDialog();
        }

        public void onEditSZZ(object parameter)
        {
            if(SelectedSZZ != null)
            {
                new AddEditSistemiZdravstveneZastiteView(SelectedSZZ).ShowDialog();
            }
            else
            {
                MessageBox.Show("Error. Select first!");
            }
        }

        public void onDeleteSZZ(object parameter)
        {
            if(SelectedSZZ == null)
            {
                MessageBox.Show("Error. Select first!");
                return;
            }

            szzRepo.Remove(SelectedSZZ.ID_SZZ);

            if(szzRepo.SaveChanges())
            {
                MessageBox.Show("Deleted!");
                onRefreshInterface(null);
            }
        }
    }
}
