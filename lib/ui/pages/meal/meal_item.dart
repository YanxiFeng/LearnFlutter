import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/meal_model.dart';
import 'package:learnflutter/ui/pages/detail/detail.dart';
import 'package:learnflutter/ui/widgets/operation_item.dart';

class HYMealItem extends StatelessWidget {
  final HyMealModel _item;
  HYMealItem(this._item);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: <Widget>[buildBasicInfo(context), buildOperationInfo()],
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .pushNamed(HYDetailScreen.routeName, arguments: _item);
      },
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          child: Image.network(
            _item.imageUrl,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              width: 300,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                _item.title,
                style: Theme.of(context)
                    .textTheme
                    .display3!
                    .copyWith(color: Colors.white),
              ),
            ))
      ],
    );
  }

  Widget buildOperationInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HYOperationItem(Icon(Icons.schedule), "${_item.duration}分钟"),
          HYOperationItem(Icon(Icons.restaurant), "${_item.complexStr}"),
          HYOperationItem(
              Icon(
                Icons.favorite,
                color: Colors.redAccent,
              ),
              "未收藏"),
        ],
      ),
    );
  }
}
