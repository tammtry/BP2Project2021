   M S B A M L   `   `   `  ����G  CSistemZZ_GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:SistemZZ_GUI.ViewsSistemZZ_GUI.Views  5   	   0    *SistemZZ_GUI.Views.ZdravstvenaUstanovaView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:SistemZZ_GUI.Views     5   	     � Title$  ZdravstvenaUstanovaView��5   	   $	��450��6)   $	��800��66   .��5	      � .+�5
   
   � 
������$��	0,0,0,-29q�6*    � RowDefinitions 5      �� 5      $��80 �6    6.   �� 5      $��80 �6    6.   �� 5      $��80 �6    6.   �� 5      $��* �6    6-    � ColumnDefinitions 5      �� 5      $	��250 �6#   61   �� 5      $	��250 �6#   61   �� 5      $	��250 �6#   61   .+�5      �� $��Zdravstvene Ustanove��6   $��0��64   $��2��6A   $��Center=�6U   $��Center=�6r   $��30(�6�   $
��Bold"�6�   $��46,30,-117,10q�6�   $	��573��6�   $��1��6�   �� 5      $��1��6   $��0��6"   $��30,10,105,10q�62   $	��Add��6H   $��30(�6V   $
��Bold"�6d    � Cursor$
 Hand��6v   ��5      �� *AddZUCommand+65   �� 5      $��3��6   $��30,10,105,136q�6"   $
��Edit��69   $��30(�6H   $
��Bold"�6V   $
 Hand��6h   ��5      �� *EditZUCommand+�� 5      $��2��6   $��0��6"   $��30,10,105,10q�62   $��Delete��6H   $��30(�6Y   $
��Bold"�6g   $
 Hand��6y   ��5      �� *DeleteZUCommand+68   �� 5      $��3��6   $��235,106,87,58q�6"   $��Refresh��69   $��30(�6K   $
��Bold"�6Y   $
 Hand��6k   $��1��5   7   $��2��6G   ��6   �� *RefreshZUCommand+6G   &   System.Windows.Controls.DataGrid  5       $��1��6   $��2��6$   $��10,10,10,136q�68   
���   �
������    
IsReadOnly .    SelectionMode$ Single=�5"         AutoGenerateColumns .  $��3��5$   7   $��1��6H   ��5#      �� *ZdravstveneUstanove+ �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 5$      �� *
SelectedZU+	   Columns	 5&      0  *System.Windows.Controls.DataGridTextColumn  5'      ,  &System.Windows.Controls.DataGridColumn
   Header$
 ID��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 65   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6@   �� *ID_ZU+6\     5(      $

 Name��6)   $	 130 67    6C   �� *	NazivZU+6a     5)      $
 Address��6)   $	 120 6:    6F   �� *
AdresaZU+6e     5*      $
 Phone number ��6)   $	 120 6@    6L   �� *	BrTelZU+6j     5+      $

 SZZ ��6)   $	 120 67    6C   �� * SistemZdravstveneZastiteID_SZZ+6y   50      51      52      53      