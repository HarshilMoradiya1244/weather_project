import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utils/share_helper.dart';
import '../../../utils/theme_provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text("Setting",style: TextStyle(fontSize: 20),),
                  const SizedBox(height: 15,),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade600
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Theme",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              const Spacer(),
                              Consumer<ThemeProvider>(
                                builder: (context, value, child) => Switch(
                                  value: value.isLight,
                                  onChanged: (value1) {
                                    ShareHelper shr = ShareHelper();
                                    shr.setTheme(value1);
                                    value.changeThem();
                                  },
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          const Column(
                            children: [
                              Text("Rain alerts"),
                              Text("6:00 am - 10:00 pm",style: TextStyle(color: Colors.blue),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade600
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("Temperature"),
                              Text("Celsius (°C)",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                          Divider(),
                          Column(
                            children: [
                              Text("Rain alerts"),
                              Text("6:00 am - 10:00 pm",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                          Divider(),
                          Column(
                            children: [
                              Text("wind"),
                              Text("kilometers per hour (km/h)",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                          Divider(),
                          Column(
                            children: [
                              Text("Air pressure"),
                              Text("Hectopascals (hPa)",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                          Divider(),
                          Column(
                            children: [
                              Text("Visiblity"),
                              Text("Kilpmeters (km)",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                      height: MediaQuery.sizeOf(context).height * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade600
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text("About Weather",style: TextStyle(fontSize: 15),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
