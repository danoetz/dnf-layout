import 'package:flutter/material.dart';
import 'package:dnf_layout/ui/home/components/widgets.dart';
import 'package:dnf_layout/shared/common/widgets/widgets.dart';
import 'package:dnf_layout/shared/common/styles/styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _stepJumlah = 0;
  int _stepDurasi = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

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
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: SimpleText(
                  text: "Terdaftar dan diawasi oleh",
                  color: MyColors.blueGrey,
                  size: 10,
                ),
              ),
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
              SimpleText(
                text: "Jumlah pinjaman Rp",
                color: MyColors.blueish,
                fontWeight: FontWeight.normal,
                padding: EdgeInsets.only(top: 20.0),
              ),
              StepByStep(
                context: context,
                backgroundColor: Colors.transparent,
                wholeMargin: EdgeInsets.symmetric(horizontal: 10.0),
                maxLimitPosition: 4,
                voidCallback: () {
                  print("Change step");
                },
                onPositionChanged: (value) {
                  setState(() {
                    _stepJumlah = value;
                  });
                },
                values: [
                  '500K',
                  '1M',
                  '1.5M',
                  '2M',
                  '2.5M',
                  '5M',
                  '10M',
                ],
                currentPosition: _stepJumlah,
              ),
              SimpleText(
                text: "Durasi pinjaman, dalam satuan bulan",
                color: MyColors.blueish,
                fontWeight: FontWeight.normal,
                padding: EdgeInsets.only(top: 20.0),
              ),
              StepByStep(
                backgroundColor: Colors.transparent,
                wholeMargin: EdgeInsets.symmetric(horizontal: 10.0),
                maxLimitPosition: 4,
                voidCallback: () {
                  print("Change step");
                },
                onPositionChanged: (value) {
                  setState(() {
                    _stepDurasi = value;
                  });
                },
                values: [
                  '3',
                  '4',
                  '5',
                  '6',
                ],
                currentPosition: _stepDurasi,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 20.0),
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
              child: CardContent(),
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
