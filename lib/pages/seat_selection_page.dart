import 'package:computer_club_vladimir/models/selected_seats.dart';
import 'package:flutter/material.dart';

class SeatSelectionPage extends StatefulWidget {
  const SeatSelectionPage({super.key});

  @override
  State<SeatSelectionPage> createState() => _SeatSelectionPageState();
}

class _SeatSelectionPageState extends State<SeatSelectionPage> {

  void _toggleSeat(String seat)
  {
    setState(() {
      if(selectedSeats.contains(seat))
      {
        selectedSeats.remove(seat);
      }
      else
      {
        selectedSeats.add(seat);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Выбор мест"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          GridView.builder(
            shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemCount: 25,
              itemBuilder: (context, index){
              String seat = "Ряд ${(index ~/5 )+ 1}, Место ${(index % 5) + 1}";
              return GestureDetector(
                onTap: () => _toggleSeat(seat),
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: selectedSeats.contains(seat) ? Colors.red : Colors.blue,
                  child: Center(
                    child: Text(
                        seat,
                        style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
              }
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context, selectedSeats);
              },
              child: Text("Сохранить")
          )
        ],
      ),
    );
  }
}
