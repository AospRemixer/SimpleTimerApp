using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace BasicStopwatch
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        // INTIALIZE COMPONENT
        public MainWindow()
        {
            InitializeComponent();
        }

        // TEXBOX CODE
        public void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            bool isNumeric = float.TryParse(CountdownTextBox.Text, out float n);
            if (isNumeric == false)
            {
                if (CountdownTextBox.Text == "")
                {

                }
                else if (CountdownTextBox.Text == " ")
                {
                    CountdownTextBox.Text = "0.00";
                }
                else
                {
                    CountdownTextBox.Text = "Invalid!";
                    CountdownTextBox.IsReadOnly = false;
                    OnPropertyChanged();
                }
            }
            if (isNumeric)
            {
                Nullable<Double> mainNum = Convert.ToDouble(CountdownTextBox.Text);
                Console.WriteLine(mainNum);
            }
        }

        // RESET BUTTON
        public void ResetButton_Onclick(object sender, RoutedEventArgs e)
        {
            CountdownTextBox.Text = "0.00";
        }

        // MY FUNCTION
        public void TimerFunc() 
        {
            double? mainNumb = Convert.ToDouble(CountdownTextBox.Text);
            while (mainNumb != 0)
            {
                Thread.Sleep(1000);
                mainNumb--;
                string mainNumbString = mainNumb.ToString();
                CountdownTextBox.Text = mainNumbString;
            }

        }

        // START BUTTON
        public void StartButton_Onclick(object sender, RoutedEventArgs e)
        {
            if (CountdownTextBox.Text == "Invalid!")
            {
                MessageBox.Show("Please Enter a valid \"NUMBER.\"");
            }
            else
            {
                TimerFunc();
            }
        }

        // ON PROPERTY CHANGE CODE
        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
