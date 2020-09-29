import 'package:flutter/material.dart';
import 'package:sightlycity/widgets/nav_drawer/nav_drawer.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Кодекс", style: Theme.of(context).textTheme.subtitle1),
        ),
        drawer: NavigationDrawer(),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text("ЗАКОН О ТИШИНЕ",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "Шумные соседи могут превратить жизнь любого человека в хаос. Иногда режим тишины нарушают рабочие, проводящие ремонт в квартире соседей. Так, наверняка многие просыпались ранним утром в воскресенье от шума дрели и молотка. Если вовремя не принять меры и не решить проблему, то отсутствие тишины обязательно скажется на качестве сна и психологическом состоянии. В любом случае, в Подмосковье действует закон «Об обеспечении тишины и покоя граждан на территории Московской области», который предусматривает жесткие санкции в отношении нарушителей. Когда и на каких объектах в Подмосковье категорически нельзя шуметь, смотрите в инфографике портала mosreg.ru.",
                          style: Theme.of(context).textTheme.bodyText1),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text(
                          " Пожаловаться на шумных соседей можно в полицию – для этого можно позвонить «112». В этом случае желательно иметь какие-то доказательства того, что шум в неположенное время действительно был – видеозапись или аудиозапись, так как к моменту приезда полиции все может прекратиться.",
                          style: Theme.of(context).textTheme.bodyText1),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Image(image: AssetImage("assets/law.png")),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("ВЫГУЛ СОБАК",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "Просьба обеспечить уборку продуктов жизнедеятельности собак в местах и на территориях общего пользования.  В целях общей безопасности просьба следить за питомцами и контролировать их движение рядом или на дороге, вблизи детей.",
                          style: Theme.of(context).textTheme.bodyText1),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("ПРАВИЛА ПАРКОВКИ АВТО",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "Просьба не парковать машины на тротуарах, детских площадках и газонах. Давайте не будем портить внешний вид нашего жилого комплекса.",
                          style: Theme.of(context).textTheme.bodyText1),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text("ВЫВОЗ МУСОРА",
                              style: Theme.of(context).textTheme.headline6)),
                      Text(
                          "Каждое утро производится вывоз мусора с площадок, расположенных возле домов 5 (строительный номер 7) и 10к2 (строительный номер 9.2). Мусоровоз отличается большими габаритами и малой маневренностью, поэтому просьба парковать машины так, чтобы мусоровоз мог без проблем проехать по ЖК. Если мусоровоз не может проехать, то водитель проводит фотофиксацию помехи и уезжает не выполнив свою работу.",
                          style: Theme.of(context).textTheme.bodyText1),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text(
                          "Долгое нахождение мусора на площадках приводит к появлению грызунов, которые любят грызть провода в машинах.",
                          style: Theme.of(context).textTheme.bodyText1),
                    ]))));
  }
}
