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
    /// Interaction logic for SistemiZdravstveneZastiteView.xaml
    /// </summary>
    public partial class SistemiZdravstveneZastiteView : Window
    {
        public SistemiZdravstveneZastiteView()
        {
            InitializeComponent();
            DataContext = new SistemZdravstveneZastiteViewModel() { Window = this };
        }
    }
}
