   M S B A M L   `   `   `  ���� F  BMyPopuStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:MyPopuStore.UI.Resource.User_Control$MyPopuStore.UI.Resource.User_Control  H    BMyPopuStore.UI.Pages.CategoryPriceManagerPage.CategoryPriceManager   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     Auc2clr-namespace:MyPopuStore.UI.Resource.User_Control       � Title$  CategoryPriceManager��$	��400��$	��200�� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � 	Resources  �� MergedDictionaries �� Source��  �� $# /UI/Resource/Dictionary1.xaml?�%    .����    GroupBoxStyle1#��[  .���  � RowDefinitions �� $��75 ��� $��* ��� $��40 ��� $��50 �.+��  �� $��25 ��� $��* � � ColumnDefinitions �� $��* ��� $��* ��� $��50 �.+��� $��0��$��Couleur���� $��1��$
��Prix���� $��2��$��Ajouter���� -   	 ��Name$	 
ColorInput��$��1��$��0��$��30��$��5q�$��Center=����� *CategoryPriceOfProduct.Color+�� -   $	 
PriceInput��$��1��$��1��$��30��$��5q�$��Center=����� *CategoryPriceOfProduct.Price+  PriceToStringConverter
 �� 	Converter#
 [ ?   9MyPopuStore.UI.Resource.User_Control.CategoryPriceControl  -     Name$ AddCategoryPrice��?   9MyPopuStore.UI.Resource.User_Control.CategoryPriceControl   Click$ AddCategoryPrice_Click��$��2��$��1��   
ColorPrice ��  �� ElementName$ 
ColorInput�� �� Path$
 Text� " HexaToSolidColorBrushConverter#
 [    Price �� $ 
PriceInput��$
 Text��� $��1��$
��Auto=�$��Disabled=�.���� ���� *ListCategories+���� .R�A�  A� Columns$ 3������ .R�   SelectPrice_Click   DeleteButtonClick DeletePrice_Click   DeleteButtonVisible$ Visible=� �� *Color+ �� *Price+�� -    ��Name$ Cancel��$��3��$��CANCEL��$
��Bold"�  buttonExitStyle#��[ 