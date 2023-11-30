import 'package:flutter/material.dart';
import 'package:projetorestaurante/food.dart';

// ignore: must_be_immutable
class CardFood extends StatelessWidget {
  CardFood({super.key});

  final _listFood = [
    Food(
        imgFood: 'lib/assets/food1.png',
        nameFood: 'Batata, arroz e feijão',
        desc:
            'Lorem ipsum dolor sit amet,\n consectetuer adipiscing elit, sed diam\n monummy nibh euismod tincidunt it',
        price: 20.0),
    Food(
        imgFood: 'lib/assets/food2.png',
        nameFood: 'Sushi',
        desc: 'item 2',
        price: 45.80),
    Food(
        imgFood: 'lib/assets/food3.png',
        nameFood: 'Carne',
        desc: 'item 3',
        price: 23.30),
    Food(
        imgFood: 'lib/assets/food4.png',
        nameFood: 'Arroz, batata e carne',
        desc: 'item 4',
        price: 65.0),
    Food(
        imgFood: 'lib/assets/food5.png',
        nameFood: 'Macarrão',
        desc: 'item 5',
        price: 30.0),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _listFood.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.symmetric(
                      horizontal: 12, vertical: 5),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: 100,
                  height: 100,
                  child: Image(
                    image: AssetImage(_listFood[index].imgFood),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(_listFood[index].nameFood,
                          style: TextStyle(color: Colors.white)),
                      const SizedBox(height: 15),
                      Text(
                        _listFood[index].desc,
                        maxLines: 3,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          const SizedBox(width: 2),
                          Text(
                            "R\$${_listFood[index].price.toString()}",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          const SizedBox(width: 60),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  side: const BorderSide(color: Colors.white),
                                  backgroundColor: Colors.red,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              child: Text(
                                'Add Cart',
                                style: TextStyle(fontSize: 13),
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const Divider(
              color: Colors.white,
              height: 30,
              indent: 20,
              endIndent: 20,
              thickness: 2,
            )
          ],
        );
      },
    );
  }
}
