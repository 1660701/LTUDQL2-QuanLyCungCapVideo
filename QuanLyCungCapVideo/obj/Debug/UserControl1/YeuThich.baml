   M S B A M L   `   `   `  ����M  IQuanLyCungCapVideo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:QuanLyCungCapVideo.UserControl1QuanLyCungCapVideo.UserControl1  5      C&clr-namespace:QuanLyCungCapVideo.ModelQuanLyCungCapVideo.Model  5      .    (QuanLyCungCapVideo.UserControl1.YeuThich   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ?local-clr-namespace:QuanLyCungCapVideo.UserControl1     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .m&clr-namespace:QuanLyCungCapVideo.Model  5        � 	Resources  5       �� DataType'   !QuanLyCungCapVideo.Model.YEUTHICH
 � Tag � LayoutTransform �� Path r�Name r� LoadedBehavior r� Source �� CornerRadius	 � RowDefinitions
 �� Orientation /  +MaterialDesignFloatingActionMiniLightButton'  !MaterialDesignThemes.Wpf.PackIcon�  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind % !MaterialDesignSubheadingTextBlock �� Triggers P� Property P� Value N� EnterActions �� 
TargetName �� TargetProperty	 W� To g� Duration N� ExitActions��%%  (��       5      *, +)7   7  �� 6
   "  6   .R�5      � $
��main��6,   -   5        $	��300��5      $	��200��6     6T   ��  5      �� 5      .+�5      �� $
��Fill=�6   ��6'   �� $ 
LinkPoster�6L   r� 5      $ 	mediaplay��6   $ Manual=�6T    62   �� $ 	LinkVideo�6T   �� 5      $	��0.5q�6   
�������$ 2��6C   $	��3 0q�6T   ._�5      � 	 5      �� 5      �� 5       �� 5!      .+�5#      � $��2��6   .+�5$      �� $��10q�6)   $
 
Horizontal=�65   $��Right=�6N   $��Bottom=�6j   .+�5/   "   �� $��	btnbochon��6)   -   5        8��  ���	#FF0F0F0F���	#FF151415���	#DDFFFFFF$��30��55   )   $��30��56   )    50   )   �� .��57   &     
������ $��20��6W   $��20��6c   $ Close=�6n   58   #   59      5:      � 5;      $��0��6   .+�5<      �� 8�� 
���������6v   �� $ TenVideo�6�   5=       5>      �� 5?      5B      5D      5F       5G      P� 5H       �@J�IsMouseOver .  5I      �� 5J      .��5K      �� .��5L   "   W� $
 main��62   $ LayoutTransform.ScaleX�6O   $	 1.5X�6�   $ 0:0:0.3D�6�   W� 5M   "   $
 main��62   $ LayoutTransform.ScaleY�6O   $	 1.5X�6�   $ 0:0:0.3D�6�   5N      5O       5Q      �� 5R      .��5S      �� .��5T   "   W� $
 main��62   $ LayoutTransform.ScaleX�6O   $ 0:0:0.3D�6�   W� 5U   "   $
 main��62   $ LayoutTransform.ScaleY�6O   $ 0:0:0.3D�6�   5V      5W      5Y      5[      5]      .��5^      � .+�5_   
   �� $��Center=�6   .+�5`      �� $
��Auto=�64   $
��Auto=�6f   ��6   �� ��5b      �� 5c      .R�5d      $�  $� Orientation$ 
Horizontal=�61   5e      ��5g      �� 5h       �� 
TargetType" ��6&   .R�5i      � $
��main��6    5j      �� 5k   "   .+�5m      �� $��scrollviewer��6+   ��5n   "   �� 5o   &   " ��66   .R�5p   *   � .+�5q   .   �� 5r   +   5s   '   .��5u   "   �� $��Center=�61   5v      � 5w       � ColumnDefinitions 5x   "   �� 5y   &   $
��auto �67   6F   �� 5z   &   $��* �67   6C   �� 5{   &   $
��auto �67   6F   .+�5}   "   ��  �� LineLeftCommand#��Z 6/   $��0��5   1    �� 	ClickMode$ Hover=�5�   2   $
��Auto��6D   $��0q�6R   ��5~   1   ��  �� ElementName$ scrollviewer����5�   ]   Z� ��6s   Z� .��5�   &     $ KeyboardArrowLeft=�6>   $��90��6X   $��90��6d   5�   #   �� 5�   "    �� LineRightCommand#��Z 6/   $��2��5�   1   $ Hover=�5�   2   $
��Auto��6D   $��0q�6R   ��5�   1   �� $ scrollviewer����5�   ]   Z� ��6s   Z� .��5�   &     $ KeyboardArrowRight=�6>   $��90��6X   $��90��6d   5�   #   5�      5�       �� Triggers 5�      5�      5�      5�      5�      5�      