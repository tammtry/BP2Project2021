using SistemZZ_GUI.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace SistemZZ_GUI.ViewModels
{
    public class HomeViewModel : BindableBase
    {
        public Window Window { get; set; }

        //Properties.
        public MyICommand ViewSZZCommand { get; set; }
        public MyICommand ViewZUCommand { get; set; }


        public HomeViewModel()
        {
            ViewSZZCommand = new MyICommand(onViewSZZ);
            ViewZUCommand = new MyICommand(onViewZU);
        }

        //Show exact windows.
        public void onViewSZZ(object parameter)
        {
            new SistemiZdravstveneZastiteView().ShowDialog();
        }

        public void onViewZU(object parameter)
        {
            new ZdravstvenaUstanovaView().ShowDialog();
        }
    }
}
