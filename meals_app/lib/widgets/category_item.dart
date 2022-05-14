import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  const CategoryItem({
    required this.title,
    required this.color,
    required this.id,
  });

  selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          color: color,
          gradient: LinearGradient(
            end: Alignment.bottomRight,
            begin: Alignment.topLeft,
            colors: [color.withOpacity(0.7), color],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
