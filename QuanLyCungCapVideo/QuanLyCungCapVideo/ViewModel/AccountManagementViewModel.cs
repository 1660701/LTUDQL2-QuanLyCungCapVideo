﻿using QuanLyCungCapVideo.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QuanLyCungCapVideo.ViewModel
{
    class AccountManagementViewModel : BaseViewModel
    {
        private ObservableCollection<TAIKHOAN> _List;
        public ObservableCollection<TAIKHOAN> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        

        private TAIKHOAN _SelectedItem;
        public TAIKHOAN SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    TenND = SelectedItem.TenND;
                    MatKhau = SelectedItem.MatKhau;
                    DienThoai = SelectedItem.DienThoai;
                    Email = SelectedItem.Email;
                    IDQuyen = SelectedItem.IDQuyen;
                }
            }
        }
        private int _IDTK;
        public int IDTK { get => _IDTK; set { _IDTK = value; OnPropertyChanged(); } }

        private string _TenND;
        public string TenND { get => _TenND; set { _TenND = value; OnPropertyChanged(); } }

        private string _MatKhau;
        public string MatKhau { get => _MatKhau; set { _MatKhau = value; OnPropertyChanged(); } }

        private string _DienThoai;
        public string DienThoai { get => _DienThoai; set { _DienThoai = value; OnPropertyChanged(); } }

        private string _Email;
        public string Email { get => _Email; set { _Email = value; OnPropertyChanged(); } }

        private string _IDQuyen;
        public string IDQuyen { get => _IDQuyen; set { _IDQuyen = value; OnPropertyChanged(); } }

        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public AccountManagementViewModel()
        {
            List = new ObservableCollection<TAIKHOAN>(DataProvider.Ins.DB.TAIKHOANs);

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, (p) =>
            {
                var taikhoan = new TAIKHOAN() { TenND = TenND, DienThoai = DienThoai, MatKhau = MatKhau ,Email = Email, IDQuyen = IDQuyen };

                DataProvider.Ins.DB.TAIKHOANs.Add(taikhoan);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(taikhoan);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.TAIKHOANs.Where(x => x.IDTK == SelectedItem.IDTK);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var taikhoan = DataProvider.Ins.DB.TAIKHOANs.Where(x => x.IDTK == SelectedItem.IDTK).SingleOrDefault();
                taikhoan.TenND = TenND;
                taikhoan.DienThoai = DienThoai;
                taikhoan.MatKhau = MatKhau;
                taikhoan.Email = Email;
                taikhoan.IDQuyen = IDQuyen;
                DataProvider.Ins.DB.SaveChanges();
                SelectedItem.TenND = TenND;
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.TAIKHOANs.Where(x => x.IDTK == SelectedItem.IDTK);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var taikhoan = DataProvider.Ins.DB.TAIKHOANs.Where(x => x.IDTK == SelectedItem.IDTK).SingleOrDefault();
                DataProvider.Ins.DB.TAIKHOANs.Remove(taikhoan);
                DataProvider.Ins.DB.SaveChanges();
                List.Remove(taikhoan);
            });
        }
    }
}
