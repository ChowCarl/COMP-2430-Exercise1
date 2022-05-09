import 'package:flutter/material.dart';
import 'Datas.dart';

class DataCard extends StatelessWidget {
  Datas data;
  final void Function() add;
  final void Function() minus;
  DataCard(this.data,this.add,this.minus);



  @override
  Widget build(BuildContext context) {
    return Card(
        margin:const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0),

        child:Column(
          children: [
            Row(
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("${data.path}"),
                    radius: 80.0,
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  "${data.intro}",
                  style: TextStyle(

                      fontSize: 18.0,
                      color:Colors.green[600]
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Price:""${data.price}"" USD",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green[600]
                  ),
                ),
                SizedBox(width: 4.0),
                TextButton.icon(
                  onPressed: add,
                  icon: Icon(Icons.exposure_plus_1),
                  label: Text(''),
                ),
                SizedBox(width: 4.0),
                Text("quantity:"" ${data.quantity}",
                style: TextStyle(
                  fontSize: 18.0,
                  color:Colors.green,
                ),),
                TextButton.icon(
                    onPressed: minus,
                    icon: Icon(Icons.exposure_minus_1),
                    label: Text('')),
              ],
            ),
          ],
        )
    );
  }
}