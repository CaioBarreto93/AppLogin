import 'package:flutter/material.dart';
import 'package:login/routes/routes_generator.dart';

class ListagemPage extends StatefulWidget {
  const ListagemPage({super.key});

  @override
  State<ListagemPage> createState() => _ListagemPageState();
}

class _ListagemPageState extends State<ListagemPage> {
  final List<Item> items = [
    Item(
      image: 'images/bota_fogo.png',
      title: 'Item 1',
      description: 'Descrição do Item 1',
    ),
    Item(
      image: 'images/casa.png',
      title: 'Item 2',
      description: 'Descrição do Item 2',
    ),
    Item(
      image: 'images/corintias.png',
      title: 'Item 3',
      description: 'Descrição do Item 3',
    ),
    Item(
      image: 'images/cuiaba.png',
      title: 'Item 4',
      description: 'Descrição do Item 4',
    ),
    Item(
      image: 'images/flamengo.png',
      title: 'Item 5',
      description: 'Descrição do Item 5',
    ),
    Item(
      image: 'images/telefone.png',
      title: 'Item 6',
      description: 'Descrição do Item 6',
    ),
    Item(
      image: 'images/palmeiras.png',
      title: 'Item 7',
      description: 'Descrição do Item 7',
    ),
    Item(
      image: 'images/prancha.png',
      title: 'Item 8',
      description: 'Descrição do Item 8',
    ),
    Item(
      image: 'images/santos.png',
      title: 'Item 9',
      description: 'Descrição do Item 9',
    ),
    Item(
      image: 'images/zap.png',
      title: 'Item 10',
      description: 'Descrição do Item 10',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  //image: AssetImage
                  image: NetworkImage(
                    'https://picsum.photos/seed/picsum/200/300',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox.shrink(),
            ),
            ListTile(
              leading: const Icon(Icons.toc_outlined),
              title: const Text("Sobre Nós"),
              onTap: () {
                Navigator.of(context).pushNamed(RoutesGenerator.aboutPage);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Menu"),
        //title: Image.network(
        //  'https://cdn1.iconfinder.com/data/icons/sharovar-outline/128/Pie_chart-512.png',
        //),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemCard(
            item: items[index],
          );
        },
      ),
    );
  }
}
class Item {
  final String image;
  final String title;
  final String description;

  Item({required this.image, required this.title, required this.description});
}

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          item.image,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(item.title),
        subtitle: Text(item.description),
      ),
    );
  }
}