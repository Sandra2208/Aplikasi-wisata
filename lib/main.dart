import 'package:flutter/material.dart';

void main() => runApp (const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
    title: 'Grojogan',
    theme: ThemeData(),
    home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/gambar1.jpg'),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text (
                'Grojogan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Staatliches'
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text('Open Everyday'),
                      ],),
                    Column(
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0),
                        Text('09:00 - 20:00'),
                      ]
                    ),
                    Column(
                      children: [
                        Icon(Icons.monetization_on),
                        SizedBox(height: 8.0),
                        Text('Rp 15.000,00'),
                      ]
                    )
                  ],
                )
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Grojogan Bengawan Solo merupakan destinasi wisata berupa air terjun yang berasal dari aliran Sungai Bengawan Solo. Di kala musim kemarau debit air terjun ini cukup menurun dan menjadi daya tarik wisata di wilayah Cepu. Tempat wisata ini juga dikenal dengan julukan Niagara Mini Kracakan. ',
                  textAlign: TextAlign.center,
                  style: TextStyle( 
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/gambar1.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/gambar2.webp',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/gambar3.jpg',
                      )
                    )
                  )
                ]
              ),
            ),
          ]
        )
      )
    ));
  }
}