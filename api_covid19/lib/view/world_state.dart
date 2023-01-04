import 'package:api_covid19/model/model_world_state.dart';
import 'package:api_covid19/services/states_service.dart';
import 'package:api_covid19/view/countries_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStateScreen extends StatefulWidget {
  const WorldStateScreen({super.key});

  @override
  State<WorldStateScreen> createState() => _WorldStateScreenState();
}

class _WorldStateScreenState extends State<WorldStateScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 5))
        ..repeat();
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  final colorList = <Color>[
    const Color(0xff4285F4),
    const Color(0xff1aa260),
    const Color(0xffde5246)
  ];
  @override
  Widget build(BuildContext context) {
    StateService stateService = StateService();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            FutureBuilder(
                future: stateService.fetchWorldStateRecord(),
                builder: (context, AsyncSnapshot<WorldStateModel> snapshot) {
                  if (!snapshot.hasData) {
                    return Expanded(
                      flex: 1,
                      child: SpinKitFadingCircle(
                        color: Colors.black,
                        size: 50.0,
                        controller: _controller,
                      ),
                    );
                  } else {
                    return Column(
                      children: [
                        PieChart(
                          dataMap: {
                            "Total":
                                double.parse(snapshot.data!.cases.toString()),
                            "Recovered": double.parse(
                                snapshot.data!.recovered.toString()),
                            "Death":
                                double.parse(snapshot.data!.deaths.toString())
                          },
                          chartValuesOptions: const ChartValuesOptions(
                            showChartValuesInPercentage: true,
                          ),
                          legendOptions: const LegendOptions(
                              legendPosition: LegendPosition.left),
                          chartRadius: MediaQuery.of(context).size.width / 3.2,
                          animationDuration: const Duration(seconds: 5),
                          chartType: ChartType.ring,
                          colorList: colorList,
                        ),
                        //   SizedBox(height: MediaQuery.of(context).size.height * .08,),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.width * .06),
                          child: Card(
                            child: Column(children: [
                              ReusableRow(
                                  title: "Total",
                                  value: snapshot.data!.cases.toString()),
                              ReusableRow(
                                  title: "Deaths",
                                  value: snapshot.data!.deaths.toString()),
                              ReusableRow(
                                  title: "Recovered",
                                  value: snapshot.data!.recovered.toString()),
                              ReusableRow(
                                  title: "Active",
                                  value: snapshot.data!.active.toString()),
                              ReusableRow(
                                  title: "Critical",
                                  value: snapshot.data!.critical.toString()),
                              ReusableRow(
                                  title: "Today Deaths",
                                  value: snapshot.data!.todayDeaths.toString()),
                              ReusableRow(
                                  title: "Today Recovered",
                                  value:
                                      snapshot.data!.todayRecovered.toString()),
                            ]),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CountriesList(),
                                ));
                          },
                          child: Container(
                            height: 50,
                            width: 400,
                            decoration: BoxDecoration(
                              color: const Color(0xff1aa260),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                'Track Countries',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                }),
          ]),
        ),
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  final String title, value;
  const ReusableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        height: 50,
        width: 400,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Text(value),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
