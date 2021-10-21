import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MunicipioListViewLoading extends StatelessWidget {
  const MunicipioListViewLoading({
    Key key,
  }) : super(key: key);

  static const _highLightColor = Color.fromRGBO(64, 75, 96, .1);
  static const _baseColor = Colors.white;
  static const _duration = Duration(milliseconds: 4000);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (BuildContext ctx, int index) {
        return cardMunicipio();
      },
    );
  }

  Card cardMunicipio() {
    return Card(
      elevation: 25.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 10.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.yellow,
                Colors.black,
              ],
            )),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.white24,
                ),
              ),
            ),
            child: Shimmer.fromColors(
              highlightColor: _highLightColor,
              baseColor: _baseColor,
              period: _duration,
              enabled: false,
              child: Icon(Icons.new_label_outlined),
            ),
          ),
          title: Shimmer.fromColors(
            highlightColor: _highLightColor,
            baseColor: _baseColor,
            period: _duration,
            child: Container(
              height: 24,
              width: 40,
              color: _highLightColor,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right_rounded,
            color: Colors.white,
            size: 30.0,
          ),
        ),
      ),
    );
  }
}
