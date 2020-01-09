import 'package:flutter/material.dart';

class ServiceInfoScreen extends StatelessWidget {
  const ServiceInfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Информация УК",
                style: Theme.of(context).textTheme.subhead)),
        body: ListView(
            children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Техник Ольга'),
                subtitle: Text('+7 (966) 356-94-95'),
                trailing: Icon(Icons.keyboard_arrow_right)),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Сантехник Роман'),
                subtitle: Text('+7 (901) 381-49-91'),
                trailing: Icon(Icons.keyboard_arrow_right)),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Электрик Сергей'),
                subtitle: Text('+7 (937) 731-66-90'),
                trailing: Icon(Icons.keyboard_arrow_right)),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Слесарь-сантехник Андрей'),
                subtitle: Text('+7 (977) 459-76-58'),
                trailing: Icon(Icons.keyboard_arrow_right)),
            //////////////////////
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Аварийная служба'),
                subtitle: Text('+7 (495) 541-60-10'),
                trailing: Icon(Icons.keyboard_arrow_right)),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Абонентский отдел'),
                subtitle: Text('+7 (495) 541-01-46'),
                trailing: Icon(Icons.keyboard_arrow_right)),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Приемная'),
                subtitle: Text('+7 (495) 541-00-21'),
                trailing: Icon(Icons.keyboard_arrow_right)),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('ПТС'),
                subtitle: Text('+7 (495) 548-04-25'),
                trailing: Icon(Icons.keyboard_arrow_right)),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Юридический отдел'),
                subtitle: Text('+7 (495) 541-57-56'),
                trailing: Icon(Icons.keyboard_arrow_right)),
          ],
        ).toList())

        /*
Техник Ольга +7-966-356-94-95 
Сантехник Роман +7-901-381-49-91 
Электрик Сергей +7-937-731-66-90 
Слесарь-сантехник Андрей +7-977-459-76-58 
Аварийная служба 
8(495) 541 60 10 
Абонентский отдел 
8(495) 541 01 46 
abonent@gkhvidnoe.ru 
Приемная 
8(495) 541 00 21 
5410021@mail.ru 
ПТС (производственно-техническая служба) 
8(495) 548 04 25 
8(495) 541 26 65 
8(495) 541 39 11 
8(495) 548 03 44 
pts@gkhvidnoe.ru 
Юридический отдел 
8(495) 541 23 33 
pravo@gkhvidnoe.ru 
Кадры 
8(495) 541 57 56 
ФЭО (Финансово-экономический отдел) 
8(495) 548 04 34 
ЦУ КИПА (домофоны) 
8(495) 541 57 76 
IT отдел (проблемы с доступом на сайт)
4955488977@mail.ru
*/

        );
  }
}
