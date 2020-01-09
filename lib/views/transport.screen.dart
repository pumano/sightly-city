import 'package:flutter/material.dart';

class TransportScreen extends StatelessWidget {
  const TransportScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Как добраться", style: Theme.of(context).textTheme.subhead),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              /*
                    Container(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text("Как добраться",
                            style: TextStyle(
                                fontFamily: "PoiretOne",
                                fontSize: 40.0,
                                color: Color(0xFFAC956B)))),
                    */
              Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text("На автомобиле",
                      style: Theme.of(context).textTheme.title)),
              Text(
                  "6 км от Москвы по Варшавскому шоссе, до первого перекрестка после МКАД, далее налево по указателю на Расторгуевское шоссе. По рассторгуевскому шоссе до указателя ЖК «Видный Город».",
                  style: Theme.of(context).textTheme.body1),
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text("На метро",
                      style: Theme.of(context).textTheme.title)),
              Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text("ОТ МЕТРО БУЛЬВАР ДМИТРИЯ ДОНСКОГО",
                      style: Theme.of(context).textTheme.subtitle)),
              Text(
                  "От метро Бульвар Дмитрия Донского вы сможете доехать до ЖК «Видный Город» на маршрутном такси № 1224 до остановки «Видный Город».",
                  style: Theme.of(context).textTheme.body1),
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text("ОТ МЕТРО АННИНО",
                      style: Theme.of(context).textTheme.subtitle)),
              Text(
                  "От метро Аннино вы сможете доехать до ЖК «Видный Город» на маршрутном такси № 1019 до остановки «Видный Город».",
                  style: Theme.of(context).textTheme.body1),
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text("На электричке",
                      style: Theme.of(context).textTheme.title)),
              Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text("ОТ КУРСКОГО ВОКЗАЛА",
                      style: Theme.of(context).textTheme.subtitle)),
              Text(
                  "На электричке МЦД до ж/д станции «Бутово», далее на автобусе № 379 до остановки «Видный Город».",
                  style: Theme.of(context).textTheme.body1),
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text("ОТ ПАВЕЛЕЦКОГО ВОКЗАЛА",
                      style: Theme.of(context).textTheme.subtitle)),
              Text(
                  "На электричке до ж/д станции «Расторгуево», далее на автобусе № 379 до остановки «Видный Город». Либо на маршрутном такси № 1019",
                  style: Theme.of(context).textTheme.body1)
            ],
          ),
        )));
  }
}
