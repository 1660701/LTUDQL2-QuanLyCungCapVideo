﻿using System;
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

namespace QuanLyCungCapVideo
{
    /// <summary>
    /// Interaction logic for AccountManagement.xaml
    /// </summary>
    public partial class AccountManagement : Window
    {
        public AccountManagement()
        {
            InitializeComponent();
        }

        List<string> ListQuyen;

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            ListQuyen = new List<string> { "Admin", "User" };
            cbquyen.ItemsSource = ListQuyen;
        }
    }
}
