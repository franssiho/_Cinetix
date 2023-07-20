import 'package:flutter_application_1/screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/profile_page_screen.dart';
import 'package:flutter_application_1/screen/seatsPage.dart';
import 'package:google_fonts/google_fonts.dart';

class CastItem {
  final String name;
  final String urlImage;

  const CastItem({
    required this.name,
    required this.urlImage,

  });
} 
class DetailFilm extends StatelessWidget {

  final CardItem item;
   DetailFilm({
    Key? key,
    required this.item,
  }) : super(key: key);

  List<CastItem> cast = [
    CastItem(
      name : "Tom Holland",
      urlImage : 'https://upload.wikimedia.org/wikipedia/commons/3/3c/Tom_Holland_by_Gage_Skidmore.jpg',
    ),
    CastItem(
      name : "Tom Holland",
      urlImage : 'https://upload.wikimedia.org/wikipedia/commons/3/3c/Tom_Holland_by_Gage_Skidmore.jpg',
    ),
    CastItem(
      name : "Tom Holland",
      urlImage : 'https://upload.wikimedia.org/wikipedia/commons/3/3c/Tom_Holland_by_Gage_Skidmore.jpg',
    ),
    CastItem(
      name : "Tom Holland",
      urlImage : 'https://upload.wikimedia.org/wikipedia/commons/3/3c/Tom_Holland_by_Gage_Skidmore.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => SeatsPage()))),
        backgroundColor: Colors.black,
        child: Text('Buy Ticket', textAlign: TextAlign.center, style: GoogleFonts.poppins(color: Colors.white,fontSize: 12),)),
      bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: Color(0xff00223e),),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,

            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: IconButton(onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            ), icon: Icon(Icons.home)),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: IconButton(onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SeatsPage()),
                            ), icon: Icon(Icons.airplane_ticket)),
                label: 'Ticket',
              ),
              BottomNavigationBarItem(
                icon: IconButton(onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ProfilePageScreen()),
                            ) , icon: Icon(Icons.person)),
                label: 'Profile',
              ),
            ],
          ),
        ),
      body: Container(
          color: Colors.red,
          width: double.infinity,
          height: (MediaQuery.of(context).size.height),
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  top: 0,
                  child: Align(
                    child: SizedBox(
                      width: (MediaQuery.of(context).size.width),
                      height: 300,
                      child: Image.network(
                        item.urlImage,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                      ),
                    ),
                  )),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(24, 18, 24, 24),
                  width: (MediaQuery.of(context).size.width),
                  height: 60,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen())),
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu, color: Colors.white))
                      ]),
                ),
              ),
              Positioned(
                  left: 0,
                  top: 257,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(24, 24, 23, 55),
                    width: (MediaQuery.of(context).size.width),
                    height: (MediaQuery.of(context).size.height),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Color(0xff0a090c), Color(0xff130b2b)],
                          begin: Alignment(-0.749, -0.979),
                          end: Alignment(0.785, 0.983),
                          stops: <double>[0, 1],
                        ),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListTile(
                            title: Text(
                              item.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark),
                            )),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '${item.rating}/10 IMDb',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 118, 16),
                          height: 18,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 15,),
                              Container(
                                width: 56,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color:Color(0xffdbe3ff),
                                  borderRadius: BorderRadius.circular(100)
                                ),
                                child: Center(
                                  child: Text(item.genre,style: TextStyle(fontSize: 8,color: Color(0xff87a3e8)),),
                                ),
                              )
                            ],),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                SizedBox(width: 15,),
                                Text('Description',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),)
                                ],),
                              SizedBox(height: 10,),
                              Row(children: [
                                SizedBox(width: 15,),
                                Text(item.desc,style: TextStyle(color: Colors.white),)
                                ],),
                              SizedBox(height: 200,),
                              ListTile(
                               title :Text("Cast",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16)),
                               trailing: ElevatedButton(onPressed: () {}, child: Text('See More', style: TextStyle(color: Colors.black),)),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                height: 156,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => CastCard(cast: cast[index]), separatorBuilder: (context, _) => SizedBox( width: 15,), itemCount: cast.length)
                              )
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //   children: [
                              //   SizedBox(width: 15,),
                              //   Text("Cast",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16)),
                              //   TextButton(onPressed: () {}, child: Text('See More',style: TextStyle(color: Colors.purple),)
                              //   )
                              // ],)
                            ],
                          ),
                        ),
                        
                        
                      ],
                    ),
                  ))
            ],
          )),

      
    );
  }

  Widget CastCard({required CastItem cast}) => Container(
        
        width: 100,
        child: Column(
          children: [
            Expanded(child: AspectRatio(aspectRatio: 4/3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(cast.urlImage),
            ),
            )
            ),
            SizedBox(height: 10,),
            Text(cast.name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)],
            
        ),
      );
}
