import 'package:flutter/material.dart';
import 'package:post_api_data/app/Provider/PostProvider.dart';
import 'package:provider/provider.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  TextEditingController txtp_name = TextEditingController();
  TextEditingController txtp_price = TextEditingController();
  TextEditingController txtp_offer = TextEditingController();
  TextEditingController txtp_cate = TextEditingController();
  TextEditingController txtp_rate = TextEditingController();
  TextEditingController txtp_desc = TextEditingController();

  PostProvider? providerF;
  PostProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<PostProvider>(context, listen: false);
    providerT = Provider.of<PostProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Add to cart system",style: TextStyle(fontSize: 20,color: Colors.white),),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {

            }, icon: Icon(Icons.search,))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                //name
                TextFormField(
                  controller: txtp_name,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    label: Text(
                      "Product Name",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                //price
                SizedBox(height: 20),
                TextFormField(
                  controller: txtp_price,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    label: Text(
                      "Product Price",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                //offer
                SizedBox(height: 20),
                TextFormField(
                  controller: txtp_offer,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    label: Text(
                      "Product Offer",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                //Category
                SizedBox(height: 20),
                TextFormField(
                  controller: txtp_cate,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    label: Text(
                      "Product Category",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                //rate
                SizedBox(height: 20),
                TextFormField(
                  controller: txtp_rate,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    label: Text(
                      "Product Rate",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                //desc
                SizedBox(height: 20),
                TextFormField(
                  controller: txtp_desc,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    label: Text(
                      "Product Description",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () async {
                      String msg =await  providerF!.post_DataParsing(
                          txtp_name.text,
                          txtp_price.text,
                          txtp_offer.text,
                          txtp_cate.text,
                          txtp_rate.text,
                          txtp_desc.text);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          "$msg",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        backgroundColor: Colors.black12,
                        behavior: SnackBarBehavior.floating,
                      ));
                    },
                    child: Text("Add to cart")),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {

                }, child: Text("Show Data")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
