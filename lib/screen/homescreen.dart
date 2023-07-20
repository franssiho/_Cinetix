import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/detailfilm.dart';
import 'package:flutter_application_1/screen/profile_page_screen.dart';
import 'package:flutter_application_1/screen/seatsPage.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class CardItem {
  final String urlImage;
  final String title;
  final String desc;
  final String genre;
  final double rating;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.desc,
    required this.genre,
    required this.rating
  });
}

// class CastItem {
//   final String name;
//   final String urlImage;

//   const CastItem({
//     required this.name,
//     required this.urlImage,

//   });
// }

class _HomeScreenState extends State<HomeScreen> {
  
  List<CardItem> items = [
    CardItem(
      urlImage : "https://upload.wikimedia.org/wikipedia/id/thumb/a/a8/Sonic_The_hedgehog_2_film_poster.jpg/404px-Sonic_The_hedgehog_2_film_poster.jpg?20220415131548",
      title : 'Sonic The Hedgehog 2',
      desc : 'lorem ipsum' ,
      genre : 'action',
      rating : 9.5,
    ),
    CardItem(
      urlImage : "https://upload.wikimedia.org/wikipedia/id/thumb/e/ed/Iron_Man_2_poster.jpg/220px-Iron_Man_2_poster.jpg",
      title : 'Iron Man 2',
      desc : 'lorem ipsum' ,
      genre : 'ACTION',
      rating : 9.5,
    ),
    CardItem(
      urlImage : "https://upload.wikimedia.org/wikipedia/en/2/2f/Morbius_%28film%29_poster.jpg",
      title : 'Morbius',
      desc : 'lorem ipsum' ,
      genre : 'ACTION',
      rating : 9.5,
    ),
    CardItem(
      urlImage : "https://cdn.myanimelist.net/images/anime/11/89556.jpg",
      title : 'When the Promised Flower Blooms',
      desc : 'lorem ipsum' ,
      genre : 'DRAMA',
      rating : 9.5,
    ),
    CardItem(
      urlImage : "https://upload.wikimedia.org/wikipedia/id/thumb/7/7a/Spider-Man_3%2C_International_Poster.jpg/403px-Spider-Man_3%2C_International_Poster.jpg?20070621124314",
      title : 'Spider-man 3',
      desc : 'lorem ipsum' ,
      genre : 'ACTION',
      rating : 9.5,
    ),
    CardItem(
      urlImage : "https://pbs.twimg.com/media/F0B0Q3gX0AEP4tr.jpg",
      title : 'Fate/Strange Fake',
      desc : 'lorem ipsum' ,
      genre : 'ACTION',
      rating : 9.5,
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: <Color>[Color(0xff0a090c), Color(0xff130b2b)],
              begin: Alignment(-0.749, -0.979),
              end: Alignment(0.785, 0.983),
              stops: <double>[0, 1],
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(19, 14, 0, 18),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                      Text('Movie',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20
                                          )
                                        )),
                      IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.white))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.fromLTRB(8, 7, 8, 7),
                  decoration: BoxDecoration(
                      color: Color(0x1e767680),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                        prefixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search)),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mic),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.fromLTRB(8, 7, 8, 7),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Now Playing',
                                style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20
                                          )
                                        )
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 256,
                                child: ListView.separated(
                                 
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => buildCard(item: items[index]), 
                                  separatorBuilder: (context, _) => SizedBox( width: 15,), 
                                  itemCount: items.length),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Coming Soon',
                                style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20
                                          )
                                        )
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 256,
                                child: ListView.separated(
                                 
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => buildCard(item: items[index]), 
                                  separatorBuilder: (context, _) => SizedBox( width: 15,), 
                                  itemCount: items.length),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Hot Movies',
                                style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20
                                          )
                                        )
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 256,
                                child: ListView.separated(
                                 
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => buildCard(item: items[index]), 
                                  separatorBuilder: (context, _) => SizedBox( width: 15,), 
                                  itemCount: items.length),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
        
  }
  Widget buildCard({ required CardItem item}) => Container(
    width: 200,
    child: Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 4/3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Material(
                child: Ink.image(
                image: NetworkImage(item.urlImage),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailFilm(item: item)
                  ),
                ),)
            ),
              )
          )
        )
        ),
        SizedBox(height: 10,),
      Text(item.title.toString(),textAlign: TextAlign.center,style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10
                                          )
                                        ))
      ],
    ),
  );
}
