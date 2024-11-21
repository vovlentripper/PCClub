import 'package:computer_club_vladimir/pages/order_to_seat.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser;

  Future<void> signOut() async {
    final navigator = Navigator.of(context);

    await FirebaseAuth.instance.signOut();

    navigator.pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Профиль" ,style: TextStyle( fontSize: 15, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.blue,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 32, right: 32, bottom: 32, top: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.blue
                    ),
                    child: Row(
                      children: <Widget>[

                        Expanded(
                            flex: 1,
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                      flex: 2,
                                      child: Text(" Ваш Email: ${user?.email}")
                                  ),
                                  Expanded(
                                      flex: 2,
                                      child: IconButton(
                                          onPressed: (){
                                            signOut();
                                          },
                                          icon: Icon(Icons.logout))
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                  )
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 32, right: 32, bottom: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child:Container(
                              padding: EdgeInsets.only(left: 32),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16)

                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Text("Забронировать место"
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => OrderToSeat()));
                                          },
                                          child: Icon(Icons.arrow_forward)
                                      )
                                  )

                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  )
              )


            ],
          ),
        )

    );
  }
}
