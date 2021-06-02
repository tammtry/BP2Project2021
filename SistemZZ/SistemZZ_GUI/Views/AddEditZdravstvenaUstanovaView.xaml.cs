using SistemZZ_DB;
using SistemZZ_GUI.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace SistemZZ_GUI.Views
{
    /// <summary>
    /// Interaction logic for AddEditZdravstvenaUstanovaView.xaml
    /// </summary>
    public partial class AddEditZdravstvenaUstanovaView : Window
    {
        public AddEditZdravstvenaUstanovaView(ZdravstvenaUstanova zu)
        {
            InitializeComponent();
            DataContext = new AddEditZdravstvenaUstanovaViewModel(zu) { Window = this };
        }
    }
}
