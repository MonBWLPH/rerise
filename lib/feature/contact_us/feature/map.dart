import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class MapContact extends StatefulWidget {
  const MapContact({Key? key}) : super(key: key);

  @override
  _MapContactState createState() => _MapContactState();
}

class _MapContactState extends State<MapContact> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/rise-map (1).png',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width < 700 ? 15 : 50,
            left: MediaQuery.of(context).size.width < 700 ? 15 : 50,
            top: MediaQuery.of(context).size.width < 700 ? 15 : 50,
          ),
          child: Container(
            color: const Color.fromRGBO(66, 133, 244, 1),
            child: Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width < 700 ? 10 : 30,
                left: MediaQuery.of(context).size.width < 700 ? 10 : 30,
                top: MediaQuery.of(context).size.width < 700 ? 10 : 30,
                bottom: MediaQuery.of(context).size.width < 700 ? 10 : 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rise Consulting Co.,Ltd.',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width < 700
                              ? 14
                              : MediaQuery.of(context).size.width < 800
                                  ? 16
                                  : 20,
                        ),
                  ),
                  Text(
                    'Central Tower, Pathumwn, Bangkok',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width < 700
                              ? 12
                              : MediaQuery.of(context).size.width < 800
                                  ? 14
                                  : 18,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        _isHovered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        _isHovered = false;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        // ignore: deprecated_member_use
                        launch('https://maps.app.goo.gl/TK4xXXbsedH75x5M7');
                      },
                      child: Container(
                        width: 200,
                        child: Row(
                          
                          children: [
                            Container(
                              
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(5), 
                            boxShadow: [],
                          ),
                          child: const Icon(
                            Icons.near_me_sharp,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 10,),
                            RichText(
                              text: TextSpan(
                                text: 'Get Direction',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color:
                                          _isHovered ? const Color.fromARGB(255, 14, 14, 14) : Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.width < 700
                                              ? 12
                                              : MediaQuery.of(context)
                                                          .size
                                                          .width <
                                                      800
                                                  ? 14
                                                  : 18,
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
