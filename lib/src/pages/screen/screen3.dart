import 'package:flutter/material.dart';

class Car {
  String? carMake;
  String? model;
  double? price;
  Car({this.carMake, this.model, this.price});
}

var carData = <Car>[
  Car(carMake: "Honda", model: "2021", price:35000),
  Car(carMake: "Toyota", model: "2020", price:34000),
  Car(carMake: "Mitsubishi", model: "2021", price:33000),
  Car(carMake: "Lancer Montero", model: "2020", price:32000),
  Car(carMake: "Ford", model: "1998", price:313000),
  Car(carMake: "Jeep", model: "1990", price:105220),
  Car(carMake: "Lamborgini", model: "1990", price:505220),
];
class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dat Table"),
      ),
      body: Center(
        child: Container(
          child: DataTable(
            sortColumnIndex: 2,
            sortAscending: false,
            columns:<DataColumn> [
              DataColumn(
                  label: Text("Carro"),
                  numeric: false,
                  onSort: (i, b) {
                    setState(() {
                      carData.sort((a, b)=> a.carMake!.compareTo(b.carMake!));
                    });
                  }
              ),
              DataColumn(
                  label: Text("Modelo"),
                  numeric: false,
                  onSort: (i, b) {
                    setState(() {
                      carData.sort((a, b)=> a.model!.compareTo(b.model!));
                    });
                  }
              ),
              DataColumn(
                label: Text("Precio"),
                numeric: true,
                onSort: (i, b) {
                  setState(() {
                    carData.sort((a, b)=> a.price!.compareTo(b.price!));
                  });
                },
              ),
            ],
            rows: carData
                .map(
                  (x) => DataRow(
                  cells: [
                    DataCell(Text(x.carMake!)),
                    DataCell(Text(x.model!)),
                    DataCell(Text((x.price).toString())),
                  ]
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
