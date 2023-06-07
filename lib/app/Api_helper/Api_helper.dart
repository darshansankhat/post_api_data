import 'dart:convert';

import 'package:http/http.dart' as http;

class Apidata {


  List json=[];

  Future<String> Postapidata(
      String p_name,String p_price,String p_offer,String p_category,String p_rate,String p_desc) async {
    String link =
        "https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php";
    var response = await http.post(
      Uri.parse(link),
      body: ({
        "p_name": p_name,
        "p_price":p_price,
        "p_offer":p_offer,
        "p_category":p_category,
        "p_rate":p_rate,
        "p_desc":p_desc,
      }),
    );
   json = jsonDecode(response.body);


   if(json[0]["status"]=="ok")
     {
       return "Add successfully";
     }
   return "error";
  }
}
