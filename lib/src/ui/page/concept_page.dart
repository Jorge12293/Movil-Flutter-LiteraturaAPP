import 'package:app_arwise/src/domain/class/content.dart';
import 'package:app_arwise/src/ui/page/example_page.dart';
import 'package:flutter/material.dart';

class ConceptPage extends StatefulWidget {
  Content content;
  ConceptPage({required this.content});

  @override
  State<ConceptPage> createState() => _ConceptPageState();
}

class _ConceptPageState extends State<ConceptPage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 1),
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                Card(
                  elevation: 3,
                  color: Colors.white,
                  child: Center(
                    child: Text(widget.content.title.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                        textAlign: TextAlign.center),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                (widget.content.urlConcept!=null)
                ?ClipRect(
                  child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child:FadeInImage(
                    placeholder: const AssetImage('assets/img/jar-loading.gif'),
                    image: NetworkImage(widget.content.urlConcept.toString()),
                  )),
                )
                :Column(
                  children: [
                    Center(child: Text('Sin imagen de Concepto'.toUpperCase(),style: const TextStyle(fontWeight: FontWeight.bold))),
                    ClipRect(
                      child: SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.65,
                      child:const Image(image: AssetImage('assets/img/no-image.png'))
                    ))
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/img/logos/esquina_amarilla.png'),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/img/logos/esquina_rosa.png'),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/img/logos/esquina_verde.png'),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/img/logos/esquina_rosa.png'),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/img/logos/esquina_azul.png'),
            ),
          ),
          Positioned(
              bottom: 60,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('BACK <'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: const BorderSide(
                              width: 4.0, color: Color(0xfffea8439)),
                        ),
                        backgroundColor: const Color(0xfffcd24f),
                        foregroundColor: Colors.black,
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExamplePage(content: widget.content)),
                      );
                      
                    },
                    child: const Icon(Icons.play_arrow, size: 40),
                    style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.black,
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
