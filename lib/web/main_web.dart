import 'package:flutter/material.dart';
import 'package:online_course/model/course.dart';
import 'package:online_course/web/detail_web.dart';
import 'package:intl/intl.dart';

class MainWeb extends StatelessWidget {
  final int gridCount;
  final formatter = NumberFormat.decimalPattern('id');

  MainWeb({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCount,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemCount: courseList.length,
      itemBuilder: (BuildContext context, int index) {
        final Course course = courseList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailWebPage(course: course);
            }));
          },
          child: Card(
            color: const Color(0xFFF0F0F0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Hero(
                      tag: course.name,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          color: Colors.white,
                          width: double.infinity,
                          child: Image.asset(course.image),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      course.name,
                      style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.monetization_on,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 2.0),
                      Text(
                        'Rp${formatter.format(course.price)}',
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const SizedBox(width: 2.0),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: course.rating.toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(
                              text: " ratings",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.access_time),
                      const SizedBox(width: 2.0),
                      Text(course.duration),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
