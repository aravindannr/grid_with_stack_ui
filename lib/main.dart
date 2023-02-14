import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: grid_stack(),
  debugShowCheckedModeBanner: false,));
}
class grid_stack extends StatelessWidget{

  var images = [
    "https://ichef.bbci.co.uk/news/976/cpsprodpb/3598/production/_126902731_gettyimages-941863358-170667a.jpg",
    "https://auswandern-info.com/wp-content/uploads/USA-New_York-Freiheitsstatue-WM-Frei.jpg",
    "https://a.cdn-hotels.com/gdcs/production29/d1870/6a5ec560-bb25-11e8-970b-0242ac110006.jpg",
    "https://www.nationalworld.com/jpim-static/image/2022/07/14/11/Bastille%20Day.jpg?width=640&quality=65&smart",
    "https://cdn.cnn.com/cnnnext/dam/assets/150109110709-russia-hermitage-full-169.jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/cf/57/e4/rideau-canal-skateway.jpg?w=700&h=500&s=1"
  ];
  var texts = [
    "INDIA",
    "USA",
    "ENGLAND",
    "FRANCE",
    "RUSSIA",
    "CANADA"
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Gridview"),
     ),
     body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
     mainAxisSpacing: 10,
       childAspectRatio: 1.2,
     ),
         itemBuilder: (context,index){
       return Card(

         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10)
         ) ,
         clipBehavior: Clip.antiAliasWithSaveLayer,
         margin: EdgeInsets.all(5),
         elevation: 10,

         child: Stack(
           children: [
             Positioned(

                 child: Image.network(images[index],fit: BoxFit.cover,width: 900,height: 900,)),
            Positioned(
                left: 15,
                bottom: 15,
                child: Text(texts[index],
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))
           ],
         ),
       );
         },
         itemCount: images.length,)
     );
  }
  
}