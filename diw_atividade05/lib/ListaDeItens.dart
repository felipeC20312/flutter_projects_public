import 'package:flutter/material.dart';

class listaDeItens extends StatefulWidget {
  const listaDeItens();

  @override
  _listaDeItensState createState() => _listaDeItensState();
}

class _listaDeItensState extends State<listaDeItens> {
  late Color myColor;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;

    List<Product> products = [
      Product("Computadores", "assets/images/product1.ico"),
      Product("Placa de Video", "assets/images/product2.jpg"),
      Product("Mouse", "assets/images/product3.jpg"),
      Product("Monitor", "assets/images/product4.jpg"),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey, // Define a cor da AppBar
        title: Text("Lista de Produtos"),
      ),
      body: Container(
        color: Colors.white, // Define a cor de fundo do corpo da tela
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: myColor, // Mantém a cor de fundo da AppBar aqui
                image: DecorationImage(
                  image: const AssetImage("assets/images/wall.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      myColor.withOpacity(0.9), BlendMode.dstATop),
                ),
              ),
            ),
            ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];
                return Padding(
                  padding: const EdgeInsets.all(
                      8.0), // Define o espaçamento desejado
                  child: ListTile(
                    leading: Container(
                      width: 50, // Ajuste a largura conforme necessário
                      height: 60, // Ajuste a altura conforme necessário
                      child: Image.asset(
                        product.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(product.name),
                    // Pode adicionar mais informações do produto, como descrição, se necessário.
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String imageUrl;

  Product(this.name, this.imageUrl);
}
