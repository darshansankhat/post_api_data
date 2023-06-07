import 'package:flutter/cupertino.dart';
import 'package:post_api_data/app/Api_helper/Api_helper.dart';

class PostProvider extends ChangeNotifier
{

  // String msg="";

  Future<String> post_DataParsing(p_name, p_price, p_offer, p_category, p_rate, p_desc)
  async {
    Apidata apidata=Apidata();

    String msg = await apidata.Postapidata(p_name, p_price, p_offer, p_category, p_rate, p_desc);

    return msg;
  }
}