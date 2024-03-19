import 'package:flutter/material.dart';
import 'package:online_course/model/course.dart';

class DetailMobilePage extends StatefulWidget {
  final Course course;

  const DetailMobilePage({Key? key, required this.course}) : super(key: key);

  @override
  DetailMobilePageState createState() => DetailMobilePageState();
}

class DetailMobilePageState extends State<DetailMobilePage> {
  bool coursePurchased = false; // Menyimpan status pembelian course
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF374151),
        title: Text(widget.course.name),
      ),
      body: ListView(
        controller: _scrollController,
        children: <Widget>[
          Hero(
            tag: widget.course.name,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32.0),
                bottomRight: Radius.circular(32.0),
              ),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: const Color(0xFFDEDEDE),
                  image: DecorationImage(
                    image: AssetImage(widget.course.image),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              'Decription',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.course.description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              "What you'll learn",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.course.learn,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              'Who this course is for',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.course.who,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (coursePurchased) {
                    coursePurchased = false;
                  } else {
                    coursePurchased = true;
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _scrollController.animateTo(
                        _scrollController.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    });
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: coursePurchased ? Colors.green : Colors.blue,
                minimumSize: const Size(100, 50),
              ),
              child: Text(
                coursePurchased ? 'Happy Study' : 'Buy Course',
              ),
            ),
          ),
          const SizedBox(height: 16),
          if (coursePurchased)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
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
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.course.modules.length,
                      itemBuilder: (context, index) {
                        final Module modul = widget.course.modules[index];
                        return Card(
                          elevation: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  modul.image,
                                  width: 160,
                                  height: 90,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  modul.title,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Duration: ${modul.duration}',
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
