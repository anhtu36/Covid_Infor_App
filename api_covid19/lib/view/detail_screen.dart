import 'package:api_covid19/view/world_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  final String name;
  final int totalCases,
      totalDeathes,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;

  const DetailScreen(
      {super.key,
      required this.image,
      required this.name,
      required this.totalCases,
      required this.totalDeathes,
      required this.totalRecovered,
      required this.active,
      required this.critical,
      required this.todayRecovered,
      required this.test});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        title: Text(
          widget.name,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height:  MediaQuery.of(context).size.height * .06,),
                      ReusableRow(
                          title: 'Cases', value: widget.totalCases.toString()),
                          ReusableRow(
                          title: 'Recovered', value: widget.totalRecovered.toString()),
                          ReusableRow(
                          title: 'Death', value: widget.totalDeathes.toString()),
                          ReusableRow(
                          title: 'Critical', value: widget.critical.toString()),
                          ReusableRow(
                          title: 'Today Recovered', value: widget.totalRecovered.toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          ),
        ],
      ),
    );
  }
}
