import 'package:flutter/material.dart';
import 'package:online_course/model/course.dart';
import 'package:online_course/mobile/detail_mobile.dart';
import 'package:intl/intl.dart';

class DetailWebPage extends StatefulWidget {
  final Course course;

  const DetailWebPage({Key? key, required this.course}) : super(key: key);

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final formatter = NumberFormat.decimalPattern('id');
  bool coursePurchased = false; // Menyimpan status pembelian course

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 700) {
      return DetailMobilePage(course: widget.course);
    } else {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color(0xFFF0F0F0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 128,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Hero(
                              tag: widget.course.name,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset(widget.course.image),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, right: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    widget.course.name,
                                    style: const TextStyle(
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    widget.course.description,
                                    style: const TextStyle(fontSize: 16),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: screenWidth <= 1000 ? 32 : 128,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Text(
                                    "What you'll learn",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                  Text(
                                    widget.course.learn,
                                    style: const TextStyle(fontSize: 16),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Text(
                                    "Who this course is for",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                  Text(
                                    widget.course.who,
                                    style: const TextStyle(fontSize: 16),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          if (coursePurchased)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text(
                                  "List of Module",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(height: 16),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: widget.course.modules.length,
                                  itemBuilder: (context, index) {
                                    final Module modul =
                                        widget.course.modules[index];
                                    return Card(
                                      elevation: 4,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              modul.image,
                                              width: 160,
                                              height: 90,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  modul.title,
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  'Duration: ${modul.duration}',
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Column(
                                children: [
                                  const SizedBox(height: 8),
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        Icons.monetization_on,
                                        color: Colors.green,
                                      ),
                                      const SizedBox(width: 2.0),
                                      Text(
                                        'Rp${formatter.format(widget.course.price)}',
                                        style: const TextStyle(
                                          fontSize: 24.0,
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
                                              text: widget.course.rating
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const TextSpan(
                                              text: " ratings",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight:
                                                      FontWeight.normal),
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
                                      Text(
                                        widget.course.duration,
                                        style: const TextStyle(
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (coursePurchased) {
                                    coursePurchased = false;
                                  } else {
                                    coursePurchased = true;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: coursePurchased
                                    ? Colors.green
                                    : Colors.blue,
                                minimumSize: const Size(200, 50),
                              ),
                              child: Text(
                                coursePurchased ? 'Happy Study' : 'Buy Course',
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
