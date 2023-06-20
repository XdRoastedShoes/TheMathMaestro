import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:themathmaestro/working/generated_topics.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:themathmaestro/services/auth.dart';
// import 'package:themathmaestro/working/points.dart';

class QuestionScreen extends StatefulWidget {
  final String location;
  int Points = 0;
  // bool awardPoints = true;
  int scoreStreak = 1;

  QuestionScreen({required this.location, super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

/* Current bugs which I am facing
reimplement awardPoints so user can solve the wrong questions
new updates
A new document is not being created with google sign in, but the document is getting created with anonymous login
The points or scores are still not getting incremented, with either the google sign in or the anonym login
possible solutions are making a new project and seeing if that works, just make a new project
make a new database with collection "users" and docs "uid" and the a field with number varibale score.

 */
class _QuestionScreenState extends State<QuestionScreen> {
  late String value;
  //AuthService authService = AuthService();
  void increaseStreak() async {
    setMultiplier(widget.scoreStreak);
  }

  void addPoints(int points) async {
    final prefs = await SharedPreferences.getInstance();
    int? streak = prefs.getInt("streak");

    widget.Points += points * streak!;
    increaseStreak();
  }

  void setMultiplier(int s) async {
    final prefs = await SharedPreferences.getInstance();

    if (s == 0) {
      prefs.setInt("streak", 1);
    } else if (s > 0) {
      int? temp = await prefs.getInt("streak");
      prefs.setInt("streak", s + temp!);

      if ((prefs.getInt("streak"))! >= 4) {
        prefs.setInt("streak", 4);
      }
    }
  }

  void resetStreak() async {
    widget.scoreStreak = 0;
    setMultiplier(widget.scoreStreak);
  }

  GeneratedStatementQuestions gsq = GeneratedStatementQuestions();
  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color.fromRGBO(32, 35, 42, 10),
        child: Column(children: [
          AppBar(
            backgroundColor: const Color.fromRGBO(32, 35, 42, 10),
            title: const Text("Questions"),
            centerTitle: true,
            automaticallyImplyLeading: true,
          ),
          Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Material(
                  child: Hero(
                      tag: widget.location,
                      child: Material(
                        color: const Color.fromRGBO(32, 35, 42, 10),
                        child: InkWell(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              child: Center(
                                  child: Image(
                                      image: AssetImage(
                                          "assets/images/${widget.location}.png"))),
                            )
                          ],
                        )),
                      )),
                ),
                Material(
                  color: const Color.fromRGBO(32, 35, 42, 10),
                  child: Column(
                    children: [
                      Center(
                        child: Text(gsq.call(widget.location),
                            style: const TextStyle(color: Colors.white)),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(172, 190, 190, 10)),
                        child: Text(gsq.getOptionA()),
                        onPressed: () {
                          widget.Points = 0;
                          value = gsq.getOptionA();
                          if (value == gsq.getCorrectOption()) {
                            addPoints(10);
                            AudioPlayer()
                                .play(AssetSource('sounds/correct.mp3'));

                            //  authService.incrementPoints(widget.Points);
                            //Points.incrementPoints(widget.Points);
                            // print(Points.returnPoints());

                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    title: Text("You got it right!"),
                                  );
                                });
                          } else {
                            resetStreak();
                            AudioPlayer()
                                .play(AssetSource("sounds/incorrect.mp3"));
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    title: Text("Sorry, you got it wrong :<"),
                                  );
                                });
                          }
                          setState(() {});
                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(172, 190, 190, 10)),
                        child: Text(gsq.getOptionB()),
                        onPressed: () {
                          widget.Points = 0;

                          value = gsq.getOptionB();
                          if (value == gsq.getCorrectOption()) {
                            addPoints(10);
                            AudioPlayer()
                                .play(AssetSource('sounds/correct.mp3'));

                            //  authService.incrementPoints(widget.Points);
                            //Points.incrementPoints(widget.Points);
                            // print(Points.returnPoints());

                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    title: Text("You got it right!"),
                                  );
                                });
                          } else {
                            resetStreak();
                            AudioPlayer()
                                .play(AssetSource("sounds/incorrect.mp3"));
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    title: Text("Sorry, you got it wrong :<"),
                                  );
                                });
                          }
                          setState(() {});
                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(172, 190, 190, 10)),
                        child: Text(gsq.getOptionC()),
                        onPressed: () {
                          widget.Points = 0;

                          value = gsq.getOptionC();
                          if (value == gsq.getCorrectOption()) {
                            addPoints(10);
                            AudioPlayer()
                                .play(AssetSource('sounds/correct.mp3'));

                            // authService.incrementPoints(widget.Points);
                            //Points.incrementPoints(widget.Points);
                            // print(Points.returnPoints());
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    title: Text("You got it right!"),
                                  );
                                });
                          } else {
                            resetStreak();
                            AudioPlayer()
                                .play(AssetSource("sounds/incorrect.mp3"));
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    title: Text("Sorry, you got it wrong :<"),
                                  );
                                });
                          }
                          setState(() {});
                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(172, 190, 190, 10)),
                        child: Text(gsq.getOptionD()),
                        onPressed: () {
                          widget.Points = 0;

                          value = gsq.getOptionD();
                          if (value == gsq.getCorrectOption()) {
                            addPoints(10);
                            AudioPlayer()
                                .play(AssetSource('sounds/correct.mp3'));

                            //    authService.incrementPoints(widget.Points);
                            // Points.incrementPoints(widget.Points);
                            // print(Points.returnPoints());

                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    title: Text("You got it right!"),
                                  );
                                });
                          } else {
                            resetStreak();
                            AudioPlayer()
                                .play(AssetSource("sounds/incorrect.mp3"));
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    title: Text("Sorry, you got it wrong :<"),
                                  );
                                });
                          }
                          setState(() {});
                        },
                      ),
                      FloatingActionButton.extended(
                          label: const Text("Skip this question"),
                          backgroundColor:
                              const Color.fromRGBO(160, 29, 38, 10),
                          onPressed: () {
                            if (widget.Points == 0) {
                              resetStreak();
                            }
                            setState(() {});
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
