import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class ApiManager{
  static getUni(country)async{
try {
   var response = await http.get(Uri.parse("http://universities.hipolabs.com/search?country=Pakistan"));
   var responseData = jsonDecode(response.body);
   return responseData;
  
} catch (e) {
  print(getUni(country));
}
  }
}