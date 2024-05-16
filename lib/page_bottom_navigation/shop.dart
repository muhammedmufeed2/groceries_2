import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 197, top: 58),
              child: Image.asset("assets/Group (4).png"),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text(
                  "Dhaka, Banassre",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),SizedBox(height: 20,),Container(
              width:344,
              height: 51,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: Colors.grey,
            ),child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(Icons.search_rounded),SizedBox(width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search Store",
                      ),
                    ),
                  )
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
