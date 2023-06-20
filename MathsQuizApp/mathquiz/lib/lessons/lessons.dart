import 'package:flutter/material.dart';
import 'package:themathmaestro/lessons/lesson_items.dart';
import 'package:themathmaestro/services/models.dart';
import 'package:themathmaestro/shared/bottom_navigation_bar.dart';
import 'package:themathmaestro/working/generated_topics.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Lessons extends StatelessWidget {
  Lessons({super.key});

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder<List<Topic>>(builder: (context, snapshot) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 35, 42, 10),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 35, 42, 10),
        title: const Text("Lesson Screen"),
        centerTitle: true,
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(children: [
          const SpaceBetween(),
          buildCard(
            location: "greaterorsmaller",
          ),
          const SpaceBetween(),
          buildCard(
            location: "additionproblems",
          ),
          const SpaceBetween(),
          buildCard(
            location: "additionwordproblems",
          ),
          const SpaceBetween(),
          buildCard(
            location: "subtractionproblems",
          ),
          const SpaceBetween(),
          buildCard(
            location: "subtractionwordproblems",
          ),
          const SpaceBetween(),
          buildCard(location: "multiplicationby0s"),
          const SpaceBetween(),
          buildCard(
            location: "multiplicationproblems",
          ),
          const SpaceBetween(),
          buildCard(
            location: "multiplicationwordproblems",
          ),
          const SpaceBetween(),
          buildCard(location: "divisionby0s"),
          const SpaceBetween(),
          buildCard(
            location: "divisionproblems",
          ),
          const SpaceBetween(),
          buildCard(
            location: "unitarymethodproblems",
          ),
          const SpaceBetween(),
          buildCard(location: "additiveinverse"),
          const SpaceBetween(),
          buildCard(location: "primeorcomposite"),
          const SpaceBetween(),
          buildCard(
            location: "decimaladdition",
          ),
          const SpaceBetween(),
          buildCard(location: "decimalsubtraction"),
          const SpaceBetween(),
          buildCard(location: "simplify"),
          const SpaceBetween(),
          buildCard(location: "reciprocal"),
          const SpaceBetween(),
          buildCard(location: "exponents"),
          const SpaceBetween(),
          buildCard(location: "roots"),
          const SpaceBetween(),
          buildCard(location: "areaandperimetersquare"),
          const SpaceBetween(),
          buildCard(location: "areaandperimeterrectangle"),
          const SpaceBetween(),
          buildCard(location: "areaandperimetertriangle"),
          const SpaceBetween(),
          buildCard(
            location: "linearequationssolutions",
          ),
          const SpaceBetween(),
          buildCard(location: "absolutevalue"),
          const SpaceBetween(),
        ]),
      )),
      //bottomNavigationBar: BottomNavBar(),
    );
  }
}

class buildCard extends StatelessWidget {
  final String location;

  buildCard({
    required this.location,
    super.key,
  });

  // ps = PointSystem(0, 1);

  void setPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt("streak", 1);
  }

  GeneratedStatementQuestions gsq = GeneratedStatementQuestions();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            alignment: Alignment.center,
            width: 313,
            height: 150,
            child: Hero(
              tag: location,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    setPrefs();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return QuestionScreen(location: location);
                        },
                      ),
                    );
                  },
                  child: Image(
                    image: AssetImage("assets/images/$location.png"),
                  ),
                ),
              ),
            )),
        // SizedBox(
        //   height: 50,
        //   child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [Text(name)]),
        // ),
      ],
    );
  }
}

class SpaceBetween extends StatelessWidget {
  const SpaceBetween({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}
