   M S B A M L   `   `   `  ����M  IQuanLyCungCapVideo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:QuanLyCungCapVideoQuanLyCungCapVideo  5   	   Q-clr-namespace:QuanLyCungCapVideo.UserControl1QuanLyCungCapVideo.UserControl1  5   	        QuanLyCungCapVideo.GoiCuoc   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:QuanLyCungCapVideo     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   6uc-clr-namespace:QuanLyCungCapVideo.UserControl1  5   	   -   5        $��GoiCuocWindow��5   	      	GoiCuocVM  � DataContext#  [  5   	     MaterialDesignBody#���  5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ GoiCuoc��5   	   $	��500��6   $
��450 ��6&   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $��60 �6   6+   �� 5      6   .+�5   
   � $��0��6   .+�5       2   ,QuanLyCungCapVideo.UserControl1.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 GoiCuocWindow��6Q   5!      � 5"   
   $��1��6   ���	#FF231F20.+�5#      �� $	��187��6   $��40��6$   $��Center=�60   $��Center=�6M   $��35(�6h   $��
Serpentine)�6v   
�������$��155,10,108,10q�6�   Gói Cước6�   5$      � 5%   
   $��2��6   ���	#FF231F20.+�5&      #  MaterialDesignThemes.Wpf.Card  +  %MaterialDesignThemes.Wpf.ShadowAssist
   ShadowDepth$
 Depth4=�6"   $��32q�6S   $��Center=�6`   $	��Top=�6}   $	��350��6�   $	��300��6�   $
��75,0q�6�   .��5'      �  5(      �� 5)      6+   �� 5*      6+   �� 5+      6+   �� 5,      6+   �� 5-      6+   .+�50      � $��0��6   .+�51      �� $��10q�6"   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên người dùng��52   "    % !MaterialDesignFloatingHintTextBox#��[ 53   "   ��54   "   �� *TenND+ �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnDataErrors . 56      � 57      $��1��6   .+�58      �� $��10q�6"   $ Mật khẩu��59   "   #��[ 5:   "   ��5;   "   �� *	MatKhau+$ PropertyChanged=� . 5=      � 5>      $��2��6   .+�5?      �� $��10q�6}   $ Gói cước��6�    & "MaterialDesignFloatingHintComboBox#��[ 6�      
Foreground
 �   �.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 �   � �� Text 6#   �� *	GoiCuoc+$ PropertyChanged=� . .@�5B      ��  � ToolTip$ 1 month, 99000 VND��6+   .��6H   BASIC5D      �� 5E      $ 6 months, 399000 VND��6+   .��6J   
STANDARD5G      �� 5H      $ 1 year, 599000 VND��6+   .��6H   	PREMIUM5J      5L      5M      � 5N      $��3��6   .+�5O      �� $��10q�6z   $ Hình thức thanh toán��6�   #��[ 6�   $��2��6�   
 �   �
 �   � 6#   �� *HTTT+$ PropertyChanged=� . .@�5R      �� .��6,   Credit Card5T      �� 5U      .��6,   MoMo5W      �� 5X      .��6,   Thẻ cào điện thoại5Z      5[      5\      � 5]      $��4��6   $��0,10,0,0q�6(   .+�5^      �� ���	#FF231F20$	��140��5`   8   $��40��6D   $
 Depth4=�5a   !   $��Center=�5b   !     MaterialDesignRaisedButton#��[ 6<   ��5^   !   �� *GoiCuocCommand+��5_   !   �� $	 GoiCuocWindow��.��5c      ��    MaterialDesignTitleTextBlock#��[ 6(   Xác nhận5e      5f      5g      5h      5i      5j      5k      5l      