import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Datas.dart';
import 'Card.dart';

void main() {
  runApp(const MaterialApp(
    home:Task(),
  ));
}
class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);
  @override
  State<Task> createState() => _TaskState();
}


class _TaskState extends State<Task> {
  List datas=[
    Datas("assets/item1.jpg", 2499.00,"Razer Blade""\n-Up to core i9 processor ""\n-Up to RTX 3080Ti GPU""\n-Vapor chamber Cooling""\n-Up to 4k 120hz monitor",0),
    Datas("assets/item2.jpg", 699.00, "Razer Monitor""\n-2K Resolution""\n-27 inch""\n-Whith Chorma RGN""\n-THX qualify""\n-HDR400",0),
    Datas("assets/item5.jpg", 199.00, "Razer Viper Ultimate""\n-Wireless mouse""\n-Both left and right handed""\n-1000hz polling rate""\n-With Chorma RGB""\n-Magnetic charging base",0),
  ];

  @override
  double x=0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Razer Shop"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:Column(
        children:[
          Column(
            children: datas.map((data)=>DataCard(
                data,
                (){
                  setState(() {
                    x+=data.price;
                    data.quantity++;
                  });
                },
                (){
                  if(data.quantity>0){
                    setState(() {
                      x-=data.price;
                      data.quantity--;
                    });
                  }
                },
            )).toList(),
          ),
          SizedBox(height: 50.0),
          Container(
            child: Text("Your total cost is:""$x",
            style: TextStyle(
              fontSize: 24.0,
              color:Colors.green,
            ),
            ),
          )
        ]
      ),
    );
  }
}









