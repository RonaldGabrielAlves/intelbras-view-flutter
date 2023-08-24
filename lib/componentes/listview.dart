import 'package:flutter/material.dart';

class ListViewIntelbras extends StatelessWidget {
  ListViewIntelbras();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (_, index) {
          return Card(
            color: Color.fromARGB(255, 255, 255, 255),
            margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22), // Define o raio do canto
            ),
            surfaceTintColor: Colors
                .white, //elevation deixa o card meio cinza, tem que colocar esse troço aqui para ajeitar
            child: Padding(
              padding:
                  EdgeInsets.only(right: 10, left: 10, top: 17, bottom: 17),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Desconhecido",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 136, 136, 136)),
                      ),
                      Row(
                        children: [
                          Icon(Icons.upload,
                              size: 20,
                              color: Color.fromARGB(255, 136, 136, 136)),
                          Text(
                            "89MB",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 136, 136, 136)),
                          ),
                          Icon(Icons.download,
                              size: 20,
                              color: Color.fromARGB(255, 136, 136, 136)),
                          Text(
                            "22MB",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 136, 136, 136)),
                          ),
                          Icon(Icons.wifi,
                              size: 20,
                              color: Color.fromARGB(255, 136, 136, 136)),
                          Text(
                            "-66dBm",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 136, 136, 136)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "MAC: 11:AA:22:BB:33:CC",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 136, 136, 136)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Equipamento: AP01 / Wireless: Sala de reunião 01",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 136, 136, 136)),
                      )
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            right: 10, left: 10, top: 3, bottom: 3),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 175, 175, 175)),
                        child: Text(
                          '2.4GHz',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time,
                              size: 20,
                              color: Color.fromARGB(255, 136, 136, 136)),
                          Text(
                            "1h30min",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 136, 136, 136)),
                          ),
                          Icon(Icons.more_vert,
                              size: 35,
                              color: Color.fromARGB(255, 136, 136, 136)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
