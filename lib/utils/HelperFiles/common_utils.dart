import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../ConstantsFiles/string_constants.dart';

class CommonUtils {
  String formatDateToDDMMYYYY(DateTime dateTime) {
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    String formattedDate = formatter.format(dateTime);
    return formattedDate;
  }

  String formatStringDateToDDMMYYYY(String date) {
    var inputFormat = DateFormat('yyyy-MM-dd');
    var inputDate = inputFormat.parse(date);

    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    String formattedDate = formatter.format(inputDate);
    return formattedDate;
  }

  String formatDateToYYYYMMDD(DateTime dateTime) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(dateTime);
    return formattedDate;
  }

  String formatDateStringToDDMMMMYYYY(String date) {
    var inputFormat = DateFormat('yyyy-MM-dd');
    var inputDate = inputFormat.parse(date);

    var outputFormat = DateFormat('dd MMMM yyyy');
    var outputDate = outputFormat.format(inputDate);

    return outputDate;
  }

  String formatDateStringToHHMMDDMMMMYYYY(String date) {
    var inputFormat = DateFormat('yyyy-MM-dd hh:mm:ss');
    var inputDate = inputFormat.parse(date);

    var outputFormat = DateFormat('hh:mm a dd MMM yyyy');
    var outputDate = outputFormat.format(inputDate);

    return outputDate;
  }

  String formatDateStringToMMMYYYY(String date) {
    var inputFormat = DateFormat('yyyy-MM-dd hh:mm:ss');
    var inputDate = inputFormat.parse(date);

    var outputFormat = DateFormat('MMM yyyy');
    var outputDate = outputFormat.format(inputDate);

    return outputDate;
  }

  String formatDateStringToDDMMMMMYYYY(String date) {
    var inputFormat = DateFormat('dd-MM-yyyy');
    var inputDate = inputFormat.parse(date);

    var outputFormat = DateFormat('dd MMMM yyyy');
    var outputDate = outputFormat.format(inputDate);

    return outputDate;
  }

  String formatDateStringToTT_AM_PM(String date) {
    var time = date;
    var temp = int.parse(time.split(':')[0]);
    String? t;
    if (temp >= 12 && temp < 24) {
      t = " PM";
    } else {
      t = " AM";
    }
    if (temp > 12) {
      temp = temp - 12;
      if (temp < 10) {
        time = time.replaceRange(0, 2, "0$temp");
        time += t;
      } else {
        time = time.replaceRange(0, 2, "$temp");
        time += t;
      }
    } else if (temp == 00) {
      time = time.replaceRange(0, 2, '12');
      time += t;
    } else {
      time += t;
    }

    return time;
  }

}
