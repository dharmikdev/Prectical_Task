import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:io';
class ApiService{
  Future alleventlist () async {
    var responseData;
    Map<String, String> Header = {
      'Content-Type': 'application/json',

    };
    // final msg = jsonEncode(acceptjson);
    // print(id);

      print(("https://allevents.s3.amazonaws.com/tests/all.json"));
      http.Response response = await http.get(
        Uri.parse("https://allevents.s3.amazonaws.com/tests/all.json"),
        headers: Header,

      );

      print("user list recive msg. :" + response.body.toString());
      responseData = json.decode(response.body);
      print(response.body);

       return responseData;



  }
  Future sportseventlist () async {
    var responseData;
    Map<String, String> Header = {
      'Content-Type': 'application/json',

    };
    // final msg = jsonEncode(acceptjson);
    // print(id);

    print(("https://allevents.s3.amazonaws.com/tests/sports.json"));
    http.Response response = await http.get(
      Uri.parse("https://allevents.s3.amazonaws.com/tests/sports.json"),
      headers: Header,

    );

    print("user list recive msg. :" + response.body.toString());
    responseData = json.decode(response.body);
    print(response.body);

    return responseData;



  }
  Future musiceventlist () async {
    var responseData;
    Map<String, String> Header = {
      'Content-Type': 'application/json',

    };
    // final msg = jsonEncode(acceptjson);
    // print(id);

    print(("https://allevents.s3.amazonaws.com/tests/music.json"));
    http.Response response = await http.get(
      Uri.parse("https://allevents.s3.amazonaws.com/tests/music.json"),
      headers: Header,

    );

    print("user list recive msg. :" + response.body.toString());
    responseData = json.decode(response.body);
    print(response.body);

    return responseData;



  }
  Future workshopeseventlist () async {
    var responseData;
    Map<String, String> Header = {
      'Content-Type': 'application/json',

    };
    // final msg = jsonEncode(acceptjson);
    // print(id);

    print(("https://allevents.s3.amazonaws.com/tests/workshops.json"));
    http.Response response = await http.get(
      Uri.parse("https://allevents.s3.amazonaws.com/tests/workshops.json"),
      headers: Header,

    );

    print("user list recive msg. :" + response.body.toString());
    responseData = json.decode(response.body);
    print(response.body);

    return responseData;



  }
  Future businesseventlist () async {
    var responseData;
    Map<String, String> Header = {
      'Content-Type': 'application/json',

    };
    // final msg = jsonEncode(acceptjson);
    // print(id);

    print(("https://allevents.s3.amazonaws.com/tests/business.json"));
    http.Response response = await http.get(
      Uri.parse("https://allevents.s3.amazonaws.com/tests/business.json"),
      headers: Header,

    );

    print("user list recive msg. :" + response.body.toString());
    responseData = json.decode(response.body);
    print(response.body);

    return responseData;



  }

}