import 'package:flutter/material.dart';
import 'package:google_search_app/widgets/barra_busqueda.dart';

class ThirdPage extends StatelessWidget {
  final String url;

  ThirdPage(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        BarraBusqueda(
            url:
                "https://flutter.dev/docs/cookbook/navigation/navigation-basics",
            numeroPestanas: "3"),
        Expanded(
          child: Image.network(
            "$url",
            fit: BoxFit.contain,
          ),
        )
      ],
    ));
  }
}
