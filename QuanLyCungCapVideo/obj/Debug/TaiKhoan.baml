   M S B A M L   `   `   `  ����M  IQuanLyCungCapVideo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:QuanLyCungCapVideoQuanLyCungCapVideo  5   	   Q-clr-namespace:QuanLyCungCapVideo.UserControl1QuanLyCungCapVideo.UserControl1  5	   	   !    QuanLyCungCapVideo.TaiKhoan   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:QuanLyCungCapVideo     5   	   <uc-clr-namespace:QuanLyCungCapVideo.UserControl1     5	   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5        $��TaiKhoanWindow��5   
      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	     
TaiKhoanVM � DataContext# [ 5   	    � Title$ TaiKhoan��5   	   $	��360��6   $	��600��6'   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6-   �� 5      $	��130 �6   6,   �� 5      6   .+�5!   
   � $��0��6   .+�5"      2   ,QuanLyCungCapVideo.UserControl1.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 TaiKhoanWindow��6R   5#      #  MaterialDesignThemes.Wpf.Card  5$   
   $��1��6   $��5q�6+   .��5%      � $��0 0 0 10q�6   .+�5&      �� $��5 5 15 5q�6V   )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên Tài Khoản��6h    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *TenND+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5'      $��5 5 15 5q�6Z   $
 Điện thoại��6l   #��[ 6�   ��6   �� *	DienThoai+$ PropertyChanged=�6�   �� 5(      $��5 5 15 5q�6V   $
 Email��6h   #��[ 6�   ��6   �� *Email+$ PropertyChanged=�6�   5)      5*        5,   
   $��2��6   $��50 20q�6+   .��5-      �� ��6   �� *List+ �� SelectedItem 65   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5.      �� 5/      .P�50      �� $��Tên Tài Khoản��6)    �� DisplayMemberBinding 6@   �� *TenND+6i   �� 51      $��Điện thoại��6)    6?   �� *	DienThoai+6l   �� 52      $��Email��6)    68   �� *Email+6a   53      55      56        57   
   $��3��6   .��58      � $��90��6   $	��Top=�6     59      �� 5:      6'   �� 5;      6(   �� 5<      6(   .+�5>      � $��0��6   .+�5?      �� 
���   �  MaterialDesignFlatButton#��[ 5@      $��Cập nhật Thông Tin��5A      ��5B      �� *EditCommand+6<   5C      � 5E      $��1��6   .+�5F      �� 
���   �#��[ 6N   $��Lịch sử thanh toán��6�   ��6   �� *	TTCommand+6�   5G      � 5H      $��2��6   .+�5I      �� 
���   �#��[ 6Z   $��Đổi Mật Khẩu��6�   ��60   �� *ChangePasswordCommand+6�   5J      5K      5L      5N      5O      