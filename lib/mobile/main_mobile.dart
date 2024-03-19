import 'package:flutter/material.dart';
import 'package:online_course/model/course.dart';
import 'package:online_course/mobile/detail_mobile.dart';
import 'package:intl/intl.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return CourseList();
  }
}

class CourseList extends StatelessWidget {
  CourseList({Key? key}) : super(key: key);

  final formatter = NumberFormat.decimalPattern('id');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: courseList.length,
      itemBuilder: (context, index) {
        final Course course = courseList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailMobilePage(course: course);
            }));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Card(
              color: const Color(0xFFF0F0F0),
              elevation: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Hero(
                      tag: course.name,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset(course.image),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            course.name,
                            style: const TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 10.0, right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    const SizedBox(width: 2.0),
                                    Text(course.rating.toString()),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    const Icon(
                                      Icons.monetization_on,
                                      color: Colors.green,
                                    ),
                                    const SizedBox(width: 2.0),
                                    Text('Rp${formatter.format(course.price)}'),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.access_time),
                                    const SizedBox(width: 2.0),
                                    Text(course.duration),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
