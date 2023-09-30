import 'package:flutter/material.dart';

class ContainerStackItem extends StatelessWidget {
  final String title;
  final String price;

  ContainerStackItem({
    required this.title,
    required this.price
});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ILLUM"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$title",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                Text("\$$price",
                    style:
                    TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("SIZE"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("16 OZ",
                          style: TextStyle(
                            fontSize: 22,
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("QTY"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("1",
                          style: TextStyle(
                            fontSize: 22,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1.5,
            ),
            ListTile(
              leading: Text(
                "Details",
                style: TextStyle(fontSize: 18),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            Divider(
              thickness: 1.5,
            ),
            ListTile(
              leading: Text(
                "Shipping & Returns",
                style: TextStyle(fontSize: 18),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            Divider(
              thickness: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
