using SistemZZ_GUI.ViewModel.SistemZdravstveneZastite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemZZ_GUI
{
    public class MainWindowViewModel : BindableBase
    {
        //Init. command for switching between views (and its property).
        public  MyICommand<string> NavCommand { get; private set; }

        //Definition of ViewModels.
        private readonly SistemZdravstveneZastiteViewModel sistemZdravstveneZastiteViewModel = new SistemZdravstveneZastiteViewModel();

        //Current ViewModel.
        private BindableBase currentViewModel;

        //Property for current ViewModel.
        public BindableBase CurrentViewModel
        {
            get { return currentViewModel; }
            set
            {
                SetProperty(ref currentViewModel, value);
            }
        }
        
        //This constructor is called when app is run.
        public MainWindowViewModel()
        {
            NavCommand = new MyICommand<string>(OnNav);
            CurrentViewModel = sistemZdravstveneZastiteViewModel;
        }

       
        private void OnNav(string dest)
        {
            switch (dest)
            {
                case "sistemZdravstveneZastite":
                    CurrentViewModel = sistemZdravstveneZastiteViewModel;
                    break;
                    
                    
            }
        }
    }
}
