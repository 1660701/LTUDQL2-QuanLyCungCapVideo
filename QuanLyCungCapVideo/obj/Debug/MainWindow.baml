   M S B A M L   `   `   `  ����M  IQuanLyCungCapVideo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:QuanLyCungCapVideoQuanLyCungCapVideo  5   	   Q-clr-namespace:QuanLyCungCapVideo.UserControl1QuanLyCungCapVideo.UserControl1  5   	   C&clr-namespace:QuanLyCungCapVideo.ModelQuanLyCungCapVideo.Model  5   	   #    QuanLyCungCapVideo.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:QuanLyCungCapVideo     5   	   <uc-clr-namespace:QuanLyCungCapVideo.UserControl1     5   	   4m&clr-namespace:QuanLyCungCapVideo.Model     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5        $��
mainWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    
 MainVM � DataContext# [ 5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ 
MainWindow��5   	   $	��700��6   $
��1350��6)   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6$   �� *LoadedWindowCommand+   CommandParameter 6L   ��  �� ElementName$ 
mainWindow��5      .��5!      �  � RowDefinitions 5"   
   �� 5#      $
��auto �6   6,   �� 5$      6   .+�5&   
   � $��0��6   .+�5'      2   ,QuanLyCungCapVideo.UserControl1.ControlBarUC  
 � Tag 6   �� *Title+$ 
mainWindow��6N   5(      � 5)   
   $��1��6    5*      �� 5+      $��80 �6    6.   �� 5,      6"   .+�5/      � $��0��6   .+�50      (  "MaterialDesignThemes.Wpf.ColorZone     Mode$ Inverted=�6+   $��16q�6<   $��Center=�6I   $��Right=�6d   .��51      ]� .+�52      ��  �� Orientation$ 
Horizontal=�6%   $��Center=�6>   $��Right=�6Y   .+�53      ��    MaterialDesignTitleTextBlock#��[ 6(   $��10 14 10 14q�6^   ��6s   �� *
Username+'  !MaterialDesignThemes.Wpf.PopupBox  55      $��5,0,16,0q�67      	StaysOpen . {�6Z   �� *	IsChecked+$ PopupEnabled��   PopupContent. 56   "   � $	��200��6(   $��8,8,8,8q�64    57   &   �� 58   *   $��* �68   �� 59   *   $��* �68   �� 5:   *   $��* �68   .+�5=   &   � $��0��6+   .+�5>   *   ��   MaterialDesignFlatButton#��[ 61   ��5?   1   �� *TaiKhoanCommand+.��6U   Tài Khoản5A   +   5B   '   � 5C   &   $��1��6+   .+�5D   *   �� -   5        #��[ 5D   F   .��6x   Yêu Thích5F   +   5G   '   � 5H   &   $��2��6+   .+�5I   *   �� -   5        $��dangxuat��5I   1   #��[ 6X   .��6�   Đăng Xuất5K   +   5L   '   5M   #   5N      5O      �� 5P      $ 
Horizontal=�5Q      $��60��68   $��Center=�6D   +	  %MaterialDesignThemes.Wpf.RippleAssist 	  
IsCentered . .+�5T      �� -   5        $
��Home��5T   %    + 'MaterialDesignFloatingActionLightButton#��[ 5V   %   $��50��5W   %   
������ $��50��6J   ���	#DDFFFFFF��6U   Z� .��5X   "   '
  !MaterialDesignThemes.Wpf.PackIcon
  $��Center=�6:   
������ �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ 	VideoFilm=�6p   $��30��6�   $��30��6�   5Y        5[      $ Standard=�5\   -   $��8 4 8 4q�5]   -      CornerRadius$ 2��5^   -    K� ZIndex$ 1��5_   -   $��
16 10 0 10q�5`   -   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�5a   -   .��5b   "   �  � ColumnDefinitions 5c   &   �� 5d   *   $
��Auto �6;   �� 5e   *   $��* �6;   �� 5f   *   $
��Auto �6;   .+�5h   &   ��   MaterialDesignToolButton#���  6-   .��5i   *   
  $ Magnify=�6B    J� Opacity$	 .56Q�6Q   5j   '   �� 5k   &   $��1��5l   -   $��8 0 0 0q�5m   -   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Build a search bar��5n   -   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5o   -   $��0q�5p   -   $	��200��5q   -   $��Center=�5r   -   �� 5s   &   #���  6-   $��2��6`   5u   '   5v   #   5w      �� 5y       & "MaterialDesignToolForegroundButton#���  6%   $��8 0 0 0q�6b   $ 0��6s   .��5z   "   
  $
 Send=�6:   5{      5}      5~      5      5�      � 5�      $��1��6   ���	#FF231F20.+�5�      �  5�      �� 5�      $��60 �6(   66   �� 5�      6*   .+�5�      � $��0��6   5�      � 5�      $��1��6   .+�5�      �� $��Right=�6'   .��5�      �� -   5        $��st��5�   k   $
��1334��6)   $	��Top=�66   $��Center=�6N   5�      5�      5�      5�      5�      5�      5�      5�      