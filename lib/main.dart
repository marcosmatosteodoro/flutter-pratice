import 'package:flutter/material.dart';

import 'InfoCard.dart';
import 'customAppBar.dart';
import 'footerNavigation.dart';
import 'profileCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<InfoMenu> listaDeCards = [
    InfoMenu(
        title: 'Account Information',
        subtitle: 'Change your account information',
        icon: Icons.person,
        color: Colors.blue),
    InfoMenu(
        title: 'Insurance Detail',
        subtitle: 'Add your insurance info',
        icon: Icons.credit_card,
        color: Colors.green),
    InfoMenu(
        title: 'Medical Records',
        subtitle: 'History about you medical records',
        icon: Icons.escalator,
        color: Colors.yellow),
    InfoMenu(
        title: 'Clinic Info',
        subtitle: 'Information about our Clinic',
        icon: Icons.house,
        color: Colors.purple),
    InfoMenu(
        title: 'Settings',
        subtitle: 'Manage & Settings',
        icon: Icons.settings,
        color: Colors.blue),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.title,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const ProfileCard(
                  name: 'Zhafira Azalea',
                  email: 'beby@gmail.com',
                  imagePath: 'images/perfil.png'),
              const SizedBox(height: 16.0),
              const Text(
                'General',
                style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF808D9E),
                    letterSpacing: 0.0),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: listaDeCards.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: InfoCard(
                          title: listaDeCards[index].title,
                          subTitle: listaDeCards[index].subtitle,
                          icon: listaDeCards[index].icon,
                          colorIcon: listaDeCards[index].color),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const FooterNavigation(),
    );
  }
}

class InfoMenu {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  InfoMenu({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });
}