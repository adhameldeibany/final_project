
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:geocoding/geocoding.dart';
import 'cleaning_home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Position? currentPosition;
  List<Placemark>  placemarks = [];
  String myLocation = '';


  @override
  void initState() {
    _determinePosition();
    super.initState();
  }


  CollectionReference ref = FirebaseFirestore.instance.collection("workers");
  @override

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(22),
                              bottomLeft: Radius.circular(22)),
                          child: Image(
                            image: AssetImage('assets/blue.jpg'),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 0,
                                ),
                                Row(children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                      myLocation,
                                        style: TextStyle(color: Colors.white),
                                      )
                                ]),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    onPressed: () {
                                      print('//////////');
                                    },
                                    icon: Icon(
                                      Icons.notifications_none,
                                      color: Colors.white,
                                      size: 30,
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text('Services to suit your needs',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Container(
                              height: 48,
                              width: 320,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey,
                                    offset: Offset(0, 5),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search services',
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Category',
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CleaningHome()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/household.png',
                                height: 60,
                              ),
                              Text('Cleaning'),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 27,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/washing-machine.png',
                                height: 60,
                              ),
                              Text('Laundry'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
    StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection("offers").snapshots(),
      builder: (context, snapshot){
        List<Row> offersWidgets = [];
        if(snapshot.hasData){
          final worker = snapshot.data?.docs.reversed.toList();
          for(var i = 0; i < worker!.length ; i++){
            var offers = worker[i];
            final offersWidget = Row(
              children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: GestureDetector(
                        onTap: () {
                          print('discount 90');
                        },
                        child: Stack(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80),
                              ),
                              elevation: 5,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/360_F_327141566_HpGV07PLtKwS7sKi8hAdD6Pt1zrS6YID.jpg',
                                    height: 150,
                                    width: 350,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Column(
                                children: [
                                  Text(
                                    offers['title'],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(offers['subtitle'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('Discount',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Text(offers['discount'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
              ),

              ],
            );
            offersWidgets.add(offersWidget);
          }
        }
        return SizedBox(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: offersWidgets,
          ),
        );
      },

    ),

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Recomended for you',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      SizedBox(width: 140,),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance.collection("workers").snapshots(),
                    builder: (context,snapshot){
                      List<Row> workerWidgets = [];
                      if(snapshot.hasData){
                        final worker = snapshot.data?.docs.toList();
                        for(var i = 0; i < worker!.length ; i++){
                          var workers = worker[i];
                          final workerWidget = Row(
                            children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                  height: 300,
                                  width: 180,
                                  color: Colors.white,
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Stack(
                                  children: [
                                  Card(
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(80),
                                  // ),
                                  elevation: 5,
                                  child: ClipRRect(
                                  //   borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    workers['image_url'],
                                  height: 180,
                                  width: 180,
                                  fit: BoxFit.fill,
                                  )),
                                  ),
                                  IconButton(
                                  onPressed: () {
                                    ref.doc(snapshot.data!.docs[i].id).update({
                                      'favourite' : !workers['favourite']
                                    }).then((value){
                                      print('update');
                                    }).onError((error, stackTrace) {
                                      print(error.toString());
                                    });
                                  },
                                  icon: workers['favourite'] != false
                                  ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  )
                                      : Icon(Icons.favorite_border))
                                  ],
                                  ),
                                  Text(
                                    workers['name'],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(workers['description']),
                                  Row(
                                  children: [
                                  RatingBar.builder(
                                  itemSize: 20,
                                  initialRating: workers['rate'].toDouble(),
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  itemCount: 5,
                                  itemPadding:
                                  EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    ref.doc(snapshot.data!.docs[i].id).update({
                                      'rate' : rating
                                    }).then((value){
                                      print('update');
                                    }).onError((error, stackTrace) {
                                      print(error.toString());
                                    });
                                    print(rating);
                                  },
                                  ),
                                  SizedBox(
                                  width: 10,
                                  ),
                                  Text('(5k)')
                                  ],
                                  )
                                  ],
                                  ),
                                  ),
                            ),
                            ],
                          );
                          workerWidgets.add(workerWidget);
                        }
                      }
                      return SizedBox(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: workerWidgets,
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            ),
        );
    }
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }
    currentPosition  = await Geolocator.getCurrentPosition();
    placemarks = await placemarkFromCoordinates(currentPosition!.latitude, currentPosition!.longitude);
  setState(() {
    myLocation = placemarks.reversed.last.subAdministrativeArea.toString();
  });

    print(placemarks.reversed.last.subAdministrativeArea.toString());
    return currentPosition!;
  }
}
