import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_app/model/travel.dart';

class MostPopular extends StatelessWidget {
  final _list = Travel.generateMostPopular();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),
      itemBuilder: (context, index) {
        var travel = _list[index];
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                travel.url,
                width: 140,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                bottom: 20,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        travel.name,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        travel.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ))
          ],
        );
      },
      separatorBuilder: (_, __) => SizedBox(width: 15),
      itemCount: _list.length,
    );
  }
}
