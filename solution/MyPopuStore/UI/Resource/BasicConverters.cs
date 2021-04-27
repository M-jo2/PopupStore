﻿using MyPopuStore.BU;
using MyPopuStore.DAL.DB;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Media;

namespace MyPopuStore.UI.Resource
{
    public class HexaToSolidColorBrushConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            SolidColorBrush color;
            try
            {
                color = (SolidColorBrush)(new BrushConverter().ConvertFrom(value.ToString())) ;
            }
            catch
            {
                color = Brushes.White;
            }
            return color;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class DecimalToStringConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string result = value != null ? ((decimal)value).ToString() : "null";
            return result;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            Decimal equivalent;
            if (Decimal.TryParse((string)value, out equivalent))
            {
                return equivalent;
            }
            return -1;
        }
    }

    public class IntToStringConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string result = value != null ? ((int)value).ToString() : "null";
            return result;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            int equivalent;
            if (int.TryParse((string)value, out equivalent))
            {
                return equivalent;
            }
            return -1;
        }
    }

    public class CategoryPriceToIDConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            CategoryPrice result;
            result = CategoryPriceServices.GetPrice(value != null ?(int)value : -1);

            return result;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            int? ID;
            if (value != null) ID = ((CategoryPrice)value).CategoryPriceId;
            else ID = null;
            return ID;
        }
    }
}