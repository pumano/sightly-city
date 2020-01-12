import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong/latlong.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.centerLeft,
      child: FlutterMap(
          options: MapOptions(center: LatLng(55.5375, 37.6433), zoom: 13),
          layers: [
            TileLayerOptions(
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c']),
            new MarkerLayerOptions(
              markers: [
                new Marker(
                  width: 40.0,
                  height: 40.0,
                  point: new LatLng(55.5375, 37.6433),
                  builder: (ctx) => new Container(
                    child: Image(image: AssetImage('assets/map-pin.png'),
                  ),
                  )
                ),
              ],
            ),
          ]),
    );
  }
}
