   M S B A M L   `   `   `  ����I  EBasicStopwatch, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:BasicStopwatchBasicStopwatch  5   	       BasicStopwatch.MainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:BasicStopwatch     5   	   -   5        $��Main_Window��5	   	     � 
ResizeMode$  NoResize=�5   	    � Title$ Basic Timer��5
   	   $	��450��6   $	��800��6*   $��20(�66   .��5      � .+�5   
   �� -   5        $��CountdownTextBox��5      $
��0.00��6   $��Center=�66    �� TextWrapping$ NoWrap=�6S    �� 	MaxLength$ 6��6i    �� MaxLines$ 1��6w   $	��Top=�6�   $	��412��6�   $��94��6�   $��Arial Black)�6�   $y�Visible=�6�   ���	#FF7814BC
������ $	��100(�65   �� TextAlignment$ Center=�6D  $��	0,123,0,0q�6[   �� 
IsReadOnly$ False��6n  $��0q�6�  .��6�  5      �� 5   
   -   5        $��StartButton��5      $��304,266,304,73q�6$   
������ 
������  �� 	ClickMode$ Press=�6�   $��0q�6�   #��[" �6�   .��5      �� $��
/Start.png��6    J� RenderTransformOrigin$ 0.543,0.874&�6(   $
��Fill=�6L   5      �� 5   
   -   5        $��ResetButton��5      $��611,163,0,0q�6$   $ Press=�6�   $��0q�6�   #��[" �6�   $
��Left=�6�   $	��Top=�6�   $��54��6  $	��119��6"  ��69   Z� ��6P   Z� .��5      �� $��
/Reset.png��6   $ 0.543,0.874&�6(   $
��Fill=�6L   $��50��6[   $	��115��6g   5      5      5      