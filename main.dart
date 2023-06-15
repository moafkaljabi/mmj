import 'package:betheme/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:betheme/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:betheme/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:betheme/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
      routes:{
        "HomeApp":(context) => const HomeApp(),
        "SplashScreen":(context) => SplashScreen(),
        "OnBoardingScreen": (context) => OnBoardingScreen(),
      },
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BeTheme"),),
      floatingActionButton: FloatingActionButton(onPressed: () {},child: const Icon(Icons.list),),
      body: Padding(padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          Text("Headline 1",style: Theme.of(context).textTheme.displayMedium,),
          Text("Headline 2",style: Theme.of(context).textTheme.displaySmall,),
          Text("Body",style:Theme.of(context).textTheme.bodyLarge ,),
          ElevatedButton(onPressed: (){}, child: const Text("Elevated Button")),
          OutlinedButton(onPressed: (){}, child: const Text("Outlined Button")),
          const Padding(padding: EdgeInsets.all(20)),
          Image.asset("assets/images/splash_images/pic1.jpg"),
        ],

      )
      ),
      
    );
  }
}
