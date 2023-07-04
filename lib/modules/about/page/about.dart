import 'package:flutter/material.dart';
import 'package:login/routes/routes_generator.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Menu"),
        //title: Image.network(
        //  'https://cdn1.iconfinder.com/data/icons/sharovar-outline/128/Pie_chart-512.png',
        //),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset('assets/images/sobre.png'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            child: Text.rich(
              TextSpan(
                text: 'A ',
                children: [
                  TextSpan(
                    text: 'XPTO ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'é uma startup inovadora que está mudando a maneira como as pessoas pensam sobre desenvolvimento de aplicativos. Nós somos a Apple do mundo do desenvolvimento de aplicativos - sempre na vanguarda da tecnologia e liderando o caminho com nossos produtos e serviços de ponta.',
                  )
                ],
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}