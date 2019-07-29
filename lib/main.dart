import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final AssetImage assetImage = AssetImage('images/woman.png');
  final AssetImage assetILogo = AssetImage('images/logo_bdi.png');
  final HexColor defaultBlueColor = new HexColor('#0d024c');

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container();

    Widget buttonSection = Container(
      color: Colors.grey,
      padding: EdgeInsets.only(bottom: 20),
      //margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.white, Icons.transform, 'Transferencias'),
          _buildButtonColumn(Colors.white, Icons.payment, 'Pagos'),
          _buildButtonColumn(Colors.white, Icons.calendar_today, 'Agenda'),
        ],
      ),
    );

    Widget headerSection = Container(
        padding: EdgeInsets.only(left: 10),
        color: Colors.grey,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildLogoColumn(Colors.white, assetILogo),
            //buildProfileButtonColumn(Colors.white, Icons.person_pin, '', 10),
            // buildProfileButtonColumn(Colors.white, Icons.notifications, '', 0),
            // buildProfileButtonColumn(Colors.white, Icons.exit_to_app, '', 0)
          ],
        ));

    Widget buildCard(String amount1, String amount2, String title1,
            String title2, String code1, String code2) =>
        SizedBox(
          height: 210,
          child: Card(
            elevation: 2,
            margin: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
            child: Column(
              children: [
                new Container(
                  padding: EdgeInsets.only(top: 10),
                ),
                ListTile(
                    title: Text(title1,
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(code1, style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text("                      " + amount1,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: defaultBlueColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            Text(
                                "                           Balance Disponible",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                          ],
                        )
                        //Text(Icons.linear_scale, color: Colors.yellowAccent),
                      ],
                    )),
                Divider(),
                ListTile(
                  title: Text(title2,
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  subtitle: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(code2, style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("                      " + amount2,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: defaultBlueColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          Text("                           Balance Disponible",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      )
                      //Text(Icons.lin
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
    Widget _buildCard() => SizedBox(
          height: 100,
          child: Card(
            elevation: 2,
            margin: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
            child: Column(
              children: [
                new Container(
                  padding: EdgeInsets.only(top: 10),
                ),
                ListTile(
                  title: Text('Prestamos Personal',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  subtitle: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("4040XXXX8001",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("                      RD\$1,005,818.72",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: defaultBlueColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          Text("                      Balance Actual",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
    Widget accountTitle(String title) {
      return Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: defaultBlueColor),
        ),
      );
    }

    return MaterialApp(
      //title: 'Flutter layout demo',
      home: Scaffold(
//        appBar: AppBar(
//          backgroundColor: Colors.black12,
//          title: Text('Flutter layout demo'),
//        ),
        body: ListView(
          children: [
            headerSection,
            //headerLogo,
            //_buildStack() ,
            //centerSelection,
            new Container(
              width: 600,
              height: 100,
              color: Colors.grey,
              child: Image(
                //backgroundColor: Colors.white,
                //backgroundImage:assetImage,
                //radius: 100,
                image: assetImage,
              ),
            ),
            Container(
              //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              decoration: BoxDecoration(color: Colors.grey),
              child: Text(
                "Bienvenida" + "\n" + 'Sr. Maria Gonzales' + "\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            titleSection,
            buttonSection,
            accountTitle("Cuentas"),
            buildCard(
                "RD\$1,005,818.72",
                "RD\$1,005,818.72",
                "Cuentas Corriente Personal",
                'Cuenta Ahorro Personal',
                "***********5426",
                "***********5426"),
            accountTitle("Tarjetas"),
            buildCard(
                "RD\$1,005,818.72",
                "RD\$1,005,818.72",
                "Tarjetas de Credito",
                'Visa Premium Platinum Chip 8080',
                "5426XXX8777",
                "5426XXX8777"),
            accountTitle("Prestamos"),
            _buildCard()
            // makeCard
            // textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, left: 10),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Column buildProfileButtonColumn(
      Color color, IconData icon, String label, double padLeft) {
    return Column(
      children: [
        Icon(icon, color: color, size: 35),
        Container(
          padding: EdgeInsets.only(left: 120, top: 20),
        ),
      ],
    );
  }

  Column buildLogoColumn(Color color, AssetImage assetImage) {
    return Column(
      children: [
        Image(image: assetImage, height: 50, width: 100, fit: BoxFit.scaleDown),
      ],
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
