import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const SecondHomework());
}

class SecondHomework extends StatelessWidget {
  const SecondHomework({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Weather Forecast"),
              centerTitle: true,
              backgroundColor: Colors.red,
            ),
            body: Container(
              color: Colors.red,
              child: Column(
                children: [
                  SearchString(),
                  CityDetail(),
                  TemperatureDetail(),
                  ExtraDetail(),
                  JustText(),
                  DynListView(),
                ],
              ),
            ))));
  }
}

class SearchString extends StatelessWidget {
  const SearchString({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: (TextField(
        decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.white),
            labelText: "Enter City Name",
            icon: Icon(
              Icons.search,
              color: Colors.white,
            )),
      )),
    );
  }
}

class CityDetail extends StatelessWidget {
  const CityDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: (Column(
        children: [
          Text(
            "Kyiv, UA",
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
          Text("Thursday, August 12, 2022",
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ],
      )),
    );
  }
}

class TemperatureDetail extends StatelessWidget {
  const TemperatureDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: (Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sunny,
              color: Colors.white,
              size: 100,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "14 °F",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  Text("SUNNY",
                      style: TextStyle(
                        letterSpacing: 5,
                        fontSize: 20,
                        color: Colors.white,
                      ))
                ],
              ),
            )
          ],
        )));
  }
}

class ExtraDetail extends StatelessWidget {
  const ExtraDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.snowing, size: 70, color: Colors.white),
            Text(
              "5",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text("km/hr",
                style: TextStyle(
                  color: Colors.white,
                ))
          ],
        ),
        Column(
          children: [
            Icon(Icons.snowing, size: 70, color: Colors.white),
            Text("3", style: TextStyle(color: Colors.white, fontSize: 30)),
            Text("%", style: TextStyle(color: Colors.white)),
          ],
        ),
        Column(
          children: [
            Icon(Icons.snowing, size: 70, color: Colors.white),
            Text("20", style: TextStyle(color: Colors.white, fontSize: 30)),
            Text("%", style: TextStyle(color: Colors.white)),
          ],
        ),
      ],
    );
  }
}

class JustText extends StatelessWidget {
  const JustText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 50),
        child: (Text(
          "7-DAY WEATHER FORECAST",
          style: TextStyle(fontSize: 18, color: Colors.white),
        )));
  }
}

const List<String> days = ["Friday", "Saturday", "Sunday", "Monday", "Thusday"];
const List<String> temperature = ["6 °F", "5 °F", "22 °F", "20 °F", "15 °F"];

class DynListView extends StatelessWidget {
  const DynListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemExtent: 180,
        itemCount: days.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(top: 15, bottom: 5, left: 5, right: 5),
            decoration: BoxDecoration(
              color: Color.fromRGBO(192, 192, 192, 0.5),
            ),
            child: Column(
              children: [
                Text(
                  days[index],
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      temperature[index],
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    Icon(
                      Icons.sunny,
                      size: 75,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
