   M S B A M L   `   `   `  ����G  CSistemZZ_GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:SistemZZ_GUI.ViewsSistemZZ_GUI.Views  5   	   6    0SistemZZ_GUI.Views.SistemiZdravstveneZastiteView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:SistemZZ_GUI.Views     5   	     � Title$#  SistemiZdravstveneZastiteView��5   	   $	��450��6/   $	��800��6<   .��5	      � .+�5
   
   � 
������$��	0,0,0,-29q�6*    � RowDefinitions 5      �� 5      $��80 �6    6.   �� 5      $��80 �6    6.   �� 5      $��80 �6    6.   �� 5      $��* �6    6-    � ColumnDefinitions 5      �� 5      $	��250 �6#   61   �� 5      $	��250 �6#   61   �� 5      $	��250 �6#   61   .+�5      �� $!��Sistemi Zdravstvene Zastite��6   $��0��6;   $��0��6H   $��3��6X   $��Center=�6l   $��Center=�6�   $��30(�6�   $
��Bold"�6�   $��229,30,137,10q�6�   6�   �� 5      $��1��6   $��0��6"   $��10,10,122,10q�62   $	��Add��6H   $��30(�6V   $
��Bold"�6d    � Cursor$
 Hand��6v   ��5      �� *AddSZZCommand+66   �� 5      $��3��6   $��10,10,122,141q�6"   $
��Edit��69   $��30(�6H   $
��Bold"�6V   $
 Hand��6h   ��5      �� *EditSZZCommand+�� 5      $��2��6   $��0��6"   $��10,10,122,10q�62   $��Delete��6H   $��30(�6Y   $
��Bold"�6g   $
 Hand��6y   ��5      �� *DeleteSZZCommand+69   �� 5      $��3��6   $��184,70,156,96q�6"   $��Refresh��69   $��30(�6K   $
��Bold"�6Y   $
 Hand��6k   $��2��5   8   $��1��6L   ��6   �� *RefreshSZZCommand+6L   &   System.Windows.Controls.DataGrid  5       $��1��6   $��3��6$   $��229,23,137,184q�68   
���   �
������    
IsReadOnly .    SelectionMode$ Single=�5"         AutoGenerateColumns .   J� RenderTransformOrigin$ 0.684,0.571&�5$   8   $��3��6\   ��5#      �� *SistemiZdravstveneZastite+ �� UpdateSourceTrigger$ PropertyChanged=�	 �� SelectedItem	 5$      �� *SelectedSZZ+
   Columns
 5&      0  *System.Windows.Controls.DataGridTextColumn  5'      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 65   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6@   �� *ID_SZZ+6]     5(      $ Naziv��6)   $	 130 68    6D   �� *
NazivSZZ+6c     5)      $ Drzava��6)   $	 120 69    6E   �� *	DrzavaSZZ+6e   5,      5-      5.      5/      