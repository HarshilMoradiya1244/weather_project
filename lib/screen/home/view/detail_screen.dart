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
                              Row(
                                children: [
                                  const Text(
                                    " Surat",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.book_outlined,
                                        color: Colors.black,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.settings_outlined,
                                        color: Colors.black,
                                      )),
                                ],
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
                                    border: Border.all()),
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
                              SizedBox(height: 10,),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.1,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all()),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.4,
                                width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all()),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
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
                                      Row(
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
                                      Row(
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
                                      Row(
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
                                      Row(
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
                                      Row(
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
                                      Row(
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
