import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/weather_provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  WeatherProvider? providerr;
  WeatherProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<WeatherProvider>();
    providerw = context.watch<WeatherProvider>();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: providerw!.weatherModel == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset("assets/images/weather.jpeg",
                          fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                               "${providerw!.weatherModel!.name}",
                               style: const TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold),
                                                                ),
                              const SizedBox(
                                height: 30,
                              ),
                              Column(
                                children: [
                                  Text(
                                      "${providerw!.weatherModel!.mainModel!.temp} K",
                                      style: const TextStyle(
                                        fontSize: 30,
                                      )),
                                  Text(
                                      "${providerw!.weatherModel!.windModel!.speed} km/h")
                                ],
                              ),
                              const SizedBox(
                                height: 130,
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.05,
                                width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(),
                                    color: Colors.white.withOpacity(0.4)
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.settings,
                                          color: Colors.white,
                                        )),
                                    const Text(
                                      "Low pollen count",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(),
                                    color: Colors.white.withOpacity(0.4)
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text("now"),
                                            Icon(
                                              Icons.cloud_sharp,
                                              color: Colors.white,
                                            ),
                                            Text("31°"),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Text("3:00pm"),
                                            Icon(
                                              Icons.sunny,
                                              color: Colors.orange,
                                            ),
                                            Text("31°"),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Text("4:00pm"),
                                            Icon(
                                              Icons.sunny,
                                              color: Colors.orange,
                                            ),
                                            Text("31°"),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Text("5:00pm"),
                                            Icon(
                                              Icons.sunny,
                                              color: Colors.orange,
                                            ),
                                            Text("29°"),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Text("6:00pm"),
                                            Icon(
                                              Icons.sunny,
                                              color: Colors.orange,
                                            ),
                                            Text("28°"),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Text("7:00pm"),
                                            Icon(
                                              Icons.sunny,
                                              color: Colors.orange,
                                            ),
                                            Text("27°"),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Text("8:00"),
                                            Icon(
                                              Icons.sunny,
                                              color: Colors.orange,
                                            ),
                                            Text("27°"),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Text("9:00"),
                                            Icon(
                                              Icons.sunny,
                                              color: Colors.orange,
                                            ),
                                            Text("26°"),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Text("10:00"),
                                            Icon(
                                              Icons.sunny,
                                              color: Colors.orange,
                                            ),
                                            Text("26°"),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Text("11:00"),
                                            Icon(
                                              Icons.sunny,
                                              color: Colors.orange,
                                            ),
                                            Text("25°"),
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          children: [
                                            Text("12:00"),
                                            Icon(
                                              Icons.sunny,
                                              color: Colors.orange,
                                            ),
                                            Text("24°"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.4,
                                width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(),
                                    color: Colors.white.withOpacity(0.4)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Row(
                                        children: [
                                          Text("1/10 Today"),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Icon(
                                            Icons.cloud_sharp,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Text("21°/30°"),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text("1/11 Tomorrow"),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Icon(
                                            Icons.sunny,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Text("22°/32°"),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text("1/12 Fri"),
                                          SizedBox(
                                            width: 100,
                                          ),
                                          Icon(
                                            Icons.sunny,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Text("22°/33°"),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text("1/13 Sat"),
                                          SizedBox(
                                            width: 95,
                                          ),
                                          Icon(
                                            Icons.sunny,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Text("20°/32°"),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text("1/14 Sun"),
                                          SizedBox(
                                            width: 92,
                                          ),
                                          Icon(
                                            Icons.sunny,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Text("17°/31°"),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text("1/15 Mon"),
                                          SizedBox(
                                            width: 87,
                                          ),
                                          Icon(
                                            Icons.sunny,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Text("17°/29°"),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text("1/16 Tue"),
                                          SizedBox(
                                            width: 90,
                                          ),
                                          Icon(
                                            Icons.sunny,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Text("17°/28°"),
                                        ],
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                              "15-day weatger forecast",style: TextStyle(color: Colors.black,fontSize: 16),)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
