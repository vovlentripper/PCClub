import 'package:computer_club_vladimir/models/selected_seats.dart';
import 'package:computer_club_vladimir/pages/seat_selection_page.dart';
import 'package:flutter/material.dart';
class OrderToSeat extends StatefulWidget {
  const OrderToSeat({super.key});

  @override
  State<OrderToSeat> createState() => _OrderToSeatState();
}

class _OrderToSeatState extends State<OrderToSeat> {

  void _openSeatSelection() async {
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => SeatSelectionPage()));
    if(result != null)
      {
        setState(() {
          selectedSeats = result;
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Забронировать место(-а)"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: _openSeatSelection,
                child: Text("Выбрать места")
            ),
            SizedBox(
              height: 20,
            ),
            Text("Выбранные места: ${selectedSeats.join(', ')}")
          ],
        ),
      ),
    );
  }
}
