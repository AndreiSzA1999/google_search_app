import 'package:flutter/material.dart';
import 'package:google_search_app/widgets/barra_busqueda.dart';

class ThirdPage extends StatelessWidget {
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
            "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/1200px-Donald_Trump_official_portrait.jpg",
            fit: BoxFit.cover,
          ),
        )
      ],
    ));
  }
}
