import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_project/screen/home/provider/weather_provider.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  WeatherProvider? providerr;
  WeatherProvider? providerw;
  TextEditingController txtcity = TextEditingController();


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
                              SizedBox(
                                height: 40,
                                child: SearchBar(
                                  controller: txtcity,
                                  leading: Icon(Icons.search_rounded),
                                  hintText: 'Search The Location',
                                  onSubmitted: (value) {
                                    providerr!.city(txtcity.text);
                                    providerr!.getData();
                                  },
                                  backgroundColor: null,
                                  shadowColor: null,
                                ),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              Text(
                                "${providerw!.weatherModel!.name}",
                                style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                  "${providerw!.weatherModel!.mainModel!.temp} k",
                                  style: const TextStyle(
                                    fontSize: 30,
                                  )),
                              const SizedBox(
                                height: 130,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.12,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.24,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all()),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Icon(Icons.thermostat),
                                          const Text("Temp Min"),
                                          Text(
                                              "${providerw!.weatherModel!.mainModel!.temp_min} "),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.12,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.24,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all()),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Icon(Icons.thermostat),
                                          const Text("Temp Max"),
                                          Text(
                                              "${providerw!.weatherModel!.mainModel!.temp_max} °"),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.12,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.24,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all()),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Icon(Icons.watch),
                                          const Text("TimeZone"),
                                          Text(
                                              "${providerw!.weatherModel!.timezone}"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.39,
                                width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all()),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.12,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.22,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all()),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Icon(Icons.water_drop_outlined),
                                                const Text("Humidity"),
                                                Text(
                                                    "${providerw!.weatherModel!.mainModel!.humidity} %"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.12,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.22,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all()),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Icon(Icons
                                                    .thermostat_auto_rounded),
                                                const Text("Feel Like"),
                                                Text(
                                                    "${providerw!.weatherModel!.mainModel!.feels_like} °"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.12,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.22,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all()),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Icon(Icons.air),
                                                const Text("N Wind"),
                                                Text(
                                                    "${providerw!.weatherModel!.windModel!.speed} km"),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.12,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.22,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all()),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Icon(Icons
                                                    .remove_red_eye_outlined),
                                                const Text("Visiblity"),
                                                Text(
                                                    "${providerw!.weatherModel!.visibility} m"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.12,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.22,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all()),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Icon(Icons.wind_power),
                                                const Text("Pressure"),
                                                Text(
                                                    "${providerw!.weatherModel!.mainModel!.pressure} hPa"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.12,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.22,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all()),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Icon(Icons
                                                    .rotate_90_degrees_ccw_outlined),
                                                const Text("Deg"),
                                                Text(
                                                    "${providerw!.weatherModel!.windModel!.deg} °"),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    TextButton(onPressed: (){
                                      Navigator.pushNamed(context, 'detail');
                                    }, child: Text("More Details",style: TextStyle(color: Colors.black,fontSize: 15),))
                                  ],
                                ),
                              )
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
