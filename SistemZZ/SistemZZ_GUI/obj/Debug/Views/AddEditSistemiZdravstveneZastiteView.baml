   M S B A M L   `   `   `  ����G  CSistemZZ_GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:SistemZZ_GUI.ViewsSistemZZ_GUI.Views  5   	   =    7SistemZZ_GUI.Views.AddEditSistemiZdravstveneZastiteView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:SistemZZ_GUI.Views     5   	     � Title$*  $AddEditSistemiZdravstveneZastiteView��5   	   $	��556��66   $	��449��6C   .��5	      � 
�������$	��526��6   $	��Top=�6,    � RowDefinitions 5
   
   �� 5      $	��100 �6   6+   �� 5      $	��100 �6   6+   �� 5      $	��100 �6   6+   �� 5      $	��100 �6   6+   �� 5      $	��100 �6   6+   �� 5      $	��100 �6   6+    � ColumnDefinitions 5   
   �� 5      $	��150 �6   6-   �� 5      $��* �6   6+   .+�5   
   �� $
��ID: ��6   $��1��6    $��0��6-   $��Center=�6=   $��Center=�6Z   $��22(�6u   6�   �� 5   
   $��Naziv: ��6   $��2��6#   $��0��60   $��Center=�6@   $��Center=�6]   $��22(�6x   6�   �� 5   
   $��Drzava: ��6   $��3��6$   $��0��61   $��Center=�6A   $��Center=�6^   $��22(�6y   6�   �� 5   
   $	��200��6   $��50��6   $��1��6k   $��10 0 0 0q�6x   $��1��6�   $
��Left=�6�   $��Center=�6�   $��22(�6�   ��6*   �� *
Szz.ID_SZZ+{�6F   �� *TextBoxEnabled+6�   �� 5   
   $	��200��6   $��50��6   $��2��6H   $��10 0 0 0q�6U   $��1��6g   $
��Left=�6w   $��Center=�6�   $��22(�6�   ��6*   �� *Szz.NazivSZZ+6�   �� 5   
   $	��200��6   $��50��6   $��3��6I   $��10 0 0 0q�6V   $��1��6h   $
��Left=�6x   $��Center=�6�   $��22(�6�   ��6*   �� *Szz.DrzavaSZZ+6�   �� 5"   
    � Cursor$
 Hand��6   $��4��6|   $��0��6�   $��2��6�   $��Center=�6�   $��Center=�6�   $��24(�6�   $	��150��6�   $��60��6�   ��6   �� *ButtonContent+��6A   �� *(&AddEditSistemZdravstveneZastiteCommand+6  �� 5#   
   
��� � �$��4��6B   $��2��6O   $��0��6c   $��Bottom=�6s   $��Center=�6�   $��16(�6�   $
��Bold"�6�   ��6   �� *	Completed+6�   5$      5%      