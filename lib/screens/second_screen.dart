import 'package:flutter/material.dart';
import 'package:google_search_app/screens/third_screen.dart';
import 'package:google_search_app/widgets/barra_busqueda.dart';
import 'package:google_search_app/widgets/tarjeta_noticia.dart';

class SecondPagePage extends StatefulWidget {
  @override
  _SecondPagePageState createState() => _SecondPagePageState();
}

class _SecondPagePageState extends State<SecondPagePage> {
  bool news = true;
  bool images = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          BarraBusqueda(
              url:
                  "https://flutter.dev/docs/cookbook/navigation/navigation-basics",
              numeroPestanas: "3"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width,
              height: size.height * 0.15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 6), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/logogoogle.png",
                            height: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "donald trump",
                            style: TextStyle(fontSize: 18),
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Icon(Icons.close),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 200,
                            width: size.height * 0.07,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    indent: 0,
                    height: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              Expanded(child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Text(
                                  "Todo",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              Container(
                                width: 75,
                                height: 3,
                                color: Colors.transparent,
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                images = false;
                                news = true;
                              });
                            },
                            child: Column(
                              children: [
                                Expanded(child: SizedBox()),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "Noticias",
                                    style: TextStyle(
                                        color:
                                            news ? Colors.blue : Colors.black,
                                        fontSize: 16),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Container(
                                  width: 100,
                                  height: 3,
                                  color:
                                      news ? Colors.blue : Colors.transparent,
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                images = true;
                                news = false;
                              });
                            },
                            child: Column(
                              children: [
                                Expanded(child: SizedBox()),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "Im??genes",
                                    style: TextStyle(
                                        color:
                                            images ? Colors.blue : Colors.black,
                                        fontSize: 16),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Container(
                                  width: 100,
                                  height: 3,
                                  color:
                                      images ? Colors.blue : Colors.transparent,
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Expanded(child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Text(
                                  "V??deos",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              Container(
                                width: 100,
                                height: 3,
                                color: Colors.transparent,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Expanded(child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Text(
                                  "M??s",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              Container(
                                width: 80,
                                height: 3,
                                color: Colors.transparent,
                              )
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
          Expanded(
              child: news
                  ? ListView(
                      children: [
                        TarjetaNoticia(
                          titular:
                              "Trump, en apuros ante la invesigaci??n penal de sus negocios",
                          tiempo: "Hace 1 d??a - ",
                          periodico: "elDiario.es",
                          descripcion:
                              'Los fiscales de Nueva York est??n considerando presentar cargos contra la Trump Organization por los impuestos atribuibles a cuantiosas bonificaciones en especie',
                        ),
                        TarjetaNoticia(
                          titular:
                              "Trump, en apuros ante la invesigaci??n penal de sus negocios",
                          tiempo: "Hace 1 d??a - ",
                          periodico: "elDiario.es",
                          descripcion:
                              'Los fiscales de Nueva York est??n considerando presentar cargos contra la Trump Organization por los impuestos atribuibles a cuantiosas bonificaciones en especie',
                        ),
                        TarjetaNoticia(
                          titular:
                              "Trump, en apuros ante la invesigaci??n penal de sus negocios",
                          tiempo: "Hace 1 d??a - ",
                          periodico: "elDiario.es",
                          descripcion:
                              'Los fiscales de Nueva York est??n considerando presentar cargos contra la Trump Organization por los impuestos atribuibles a cuantiosas bonificaciones en especie',
                        ),
                        TarjetaNoticia(
                          titular:
                              "Trump, en apuros ante la invesigaci??n penal de sus negocios",
                          tiempo: "Hace 1 d??a - ",
                          periodico: "elDiario.es",
                          descripcion:
                              'Los fiscales de Nueva York est??n considerando presentar cargos contra la Trump Organization por los impuestos atribuibles a cuantiosas bonificaciones en especie',
                        ),
                      ],
                    )
                  : GridView(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0),
                      children: [
                        ImagenCard(
                          urlImagen:
                              "https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2021/07/14/16262491816801.jpg",
                          titular: "Trump reaparece en..",
                          periodico: "www.france24.com",
                        ),
                        ImagenCard(
                          urlImagen:
                              "https://s.france24.com/media/display/3fc320f8-d6ed-11eb-a17f-005056a964fe/w:1280/p:16x9/TRUMP%201%20%281%29.webp",
                          titular: "Trump reaparece en..",
                          periodico: "www.france24.com",
                        ),
                        ImagenCard(
                          urlImagen:
                              "https://s.france24.com/media/display/3fc320f8-d6ed-11eb-a17f-005056a964fe/w:1280/p:16x9/TRUMP%201%20%281%29.webp",
                          titular: "Trump reaparece en..",
                          periodico: "www.france24.com",
                        ),
                        ImagenCard(
                          urlImagen:
                              "https://s.france24.com/media/display/3fc320f8-d6ed-11eb-a17f-005056a964fe/w:1280/p:16x9/TRUMP%201%20%281%29.webp",
                          titular: "Trump reaparece en..",
                          periodico: "www.france24.com",
                        ),
                        ImagenCard(
                          urlImagen:
                              "https://s.france24.com/media/display/3fc320f8-d6ed-11eb-a17f-005056a964fe/w:1280/p:16x9/TRUMP%201%20%281%29.webp",
                          titular: "Trump reaparece en..",
                          periodico: "www.france24.com",
                        ),
                        ImagenCard(
                          urlImagen:
                              "https://s.france24.com/media/display/3fc320f8-d6ed-11eb-a17f-005056a964fe/w:1280/p:16x9/TRUMP%201%20%281%29.webp",
                          titular: "Trump reaparece en..",
                          periodico: "www.france24.com",
                        ),
                        ImagenCard(
                          urlImagen:
                              "https://s.france24.com/media/display/3fc320f8-d6ed-11eb-a17f-005056a964fe/w:1280/p:16x9/TRUMP%201%20%281%29.webp",
                          titular: "Trump reaparece en..",
                          periodico: "www.france24.com",
                        ),
                      ],
                    )),
        ],
      ),
    );
  }
}

class ImagenCard extends StatelessWidget {
  const ImagenCard(
      {required this.urlImagen,
      required this.titular,
      required this.periodico});
  final String urlImagen;
  final String titular;
  final String periodico;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ThirdPage(urlImagen)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(urlImagen),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    titular,
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: SizedBox(
                  child: Text(
                    periodico,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
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
