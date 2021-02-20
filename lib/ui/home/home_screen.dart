import 'package:flutter/material.dart';
import 'package:dnf_layout/shared/common/styles/styles.dart';
import 'package:dnf_layout/ui/home/widgets/home_widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.lightTheme.primaryColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                height: 50,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset("assets/images/logo_ojk.png"),
                    DanafixHeader(tkb90: "100%"),
                  ],
                ),
              ),
              Expanded(child: ContainerWithCircle()),
              Text("Jumlah pinjaman Rp"),
              Container(
                height: 50,
                margin: EdgeInsets.all(10.0),
                color: Colors.teal,
              ),
              Text("Durasi pinjaman, dalam satuan bulan"),
              Container(
                height: 50,
                margin: EdgeInsets.all(10.0),
                color: Colors.teal,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "SUDAH MENJADI PEMINJAM",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "DAPATKAN DANA SEKARANG!",
                    style: TextStyle(
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerWithCircle extends StatelessWidget {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 4.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: circleRadius / 2.0),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Colors.white,
            ),
            height: 200.0,
            child: Card(
              elevation: 4,
              margin: EdgeInsets.zero,
              child: Container(),
            ),
          ),
        ),
        Container(
          width: circleRadius,
          height: circleRadius,
          decoration:
              ShapeDecoration(shape: CircleBorder(), color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(circleBorderWidth),
            child: CircleAvatar(
              backgroundColor: MyTheme.lightTheme.backgroundColor,
              child: Image.asset(
                "assets/images/bag_dollar.png",
                height: 70,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        )
      ],
    );
  }
}
