import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zomi_vicroad_learner/menuScreen.dart';
import 'package:zomi_vicroad_learner/quiztext/generalKnowledgeQuiz.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = new GeneralKnowledgeQuiz();
var choiceNumber1 = 0;
var choiceNumber2 = 1;
var choiceNumber3 = 2;
var choiceSequence = 0;
var answerNumber = 0;
int _radiovalue1;
var bkgrdColor1;
var bkgrdColor2;
var bkgrdColor3;

class GeneralKnowledge extends StatefulWidget {
  @override
  _GeneralKnowledgeState createState() => _GeneralKnowledgeState();
}

class _GeneralKnowledgeState extends State<GeneralKnowledge> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Zomi Vicroad Learner', style: TextStyle(fontSize: 20),),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: new Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
              ),

              //Top Score and Question Number
              Container(
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Dotna ${questionNumber + 1} of ${quiz.questions.length}',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    // Text(
                    //   'Score: $finalScore',
                    //   style: TextStyle(fontSize: 18.0),
                    // )
                  ],
                ),
              ),

              //Question Images
              new Padding(
                padding: EdgeInsets.all(10.0),
              ),
               Image.asset(
                "images/${quiz.images[questionNumber]}.JPG",               
                height: quiz.images[questionNumber] == "blank" ? 0 : 150,               
              ),


              // Question text
              new Padding(
                padding: EdgeInsets.all(10.0),
              ),
              new Text(
                quiz.questions[questionNumber],
                style: TextStyle(fontSize: 18.0),
              ),

              //Choice text

              new Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Column(
                children: <Widget>[
                  new RadioListTile<int>(
                    value: 0,
                    groupValue: _radiovalue1,
                    onChanged: _handleRadioValueChange1,
                    title: Text(
                      quiz.choice[choiceSequence][choiceNumber1],
                      style: TextStyle(
                          fontSize: 18.0, backgroundColor: bkgrdColor1),
                    ),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 1,
                    groupValue: _radiovalue1,
                    onChanged: _handleRadioValueChange2,
                    title: Text(
                      quiz.choice[choiceSequence][choiceNumber2],
                      style: TextStyle(
                          fontSize: 18.0, backgroundColor: bkgrdColor2),
                    ),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 2,
                    groupValue: _radiovalue1,
                    onChanged: _handleRadioValueChange3,
                    title: Text(
                      quiz.choice[choiceSequence][choiceNumber3],
                      style: TextStyle(
                          fontSize: 18.0, backgroundColor: bkgrdColor3),
                    ),
                    activeColor: Colors.blueAccent,
                  ),
                ],
              ),

              //Bottom Next and Previous
              new Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            color: Colors.blue,
                            onPressed: () {
                              setState(() {
                                backButton();
                              });
                            },
                            child: Text(
                              'Back',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150.0,
                        ),
                        Expanded(
                          child: RaisedButton(
                            color: Colors.blue,
                            onPressed: () {
                              setState(() {
                                nextQuestion();
                              });
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleRadioValueChange1(int value) {
    _radiovalue1 = value;
    setState(() {
      if (quiz.choice[questionNumber][0] ==
          quiz.correctAnswers[questionNumber]) {
        bkgrdColor1 = Color(0xFF76FF03);
        //finalScore++;
      } else {
        bkgrdColor1 = Color(0xFFFF1744);
      }
    });
  }

  void _handleRadioValueChange2(int value) {
    _radiovalue1 = value;
    setState(() {
      if (quiz.choice[questionNumber][1] ==
          quiz.correctAnswers[questionNumber]) {
        bkgrdColor2 = Color(0xFF76FF03);
        //finalScore++;
      } else {
        bkgrdColor2 = Color(0xFFFF1744);
      }
    });
  }

  void _handleRadioValueChange3(int value) {
    _radiovalue1 = value;
    setState(() {
      if (quiz.choice[questionNumber][2] ==
          quiz.correctAnswers[questionNumber]) {
        bkgrdColor3 = Color(0xFF76FF03);
        //finalScore++;
      } else {
        bkgrdColor3 = Color(0xFFFF1744);
      }
    });
  }

  void nextQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Summary(score: finalScore)));
      } else {
        questionNumber++;
        choiceSequence++;
        _handleRadioValueChange1(-1);
        _handleRadioValueChange2(-1);
        _handleRadioValueChange3(-1);
        bkgrdColor1 = Colors.white;
        bkgrdColor2 = Colors.white;
        bkgrdColor3 = Colors.white;
      }
    });
  }

  void backButton() {
    setState(() {
      if (questionNumber == 0 ) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuScreen()),
        );
      } else {
        questionNumber--;
        choiceSequence--;
        _handleRadioValueChange1(-1);
        _handleRadioValueChange2(-1);
        _handleRadioValueChange3(-1);
        bkgrdColor1 = Colors.white;
        bkgrdColor2 = Colors.white;
        bkgrdColor3 = Colors.white;
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // new Text(
              //   'Score function mailam ah hong update ning #by josephkhaipi@gmail.com \n$score',
              //   style: TextStyle(fontSize: 30.0),
              //   textAlign: TextAlign.center,
              // ),
              new Padding(padding: EdgeInsets.all(30.0)),
              new MaterialButton(
                color: Colors.red,
                onPressed: () {
                  questionNumber = 0;
                  finalScore = 0;
                  choiceSequence = 0;
                  bkgrdColor1 = Colors.white;
                  bkgrdColor2 = Colors.white;
                  bkgrdColor3 = Colors.white;
                  Navigator.pop(context);
                },
                child: new Text(
                  'Restart (Kipan Kik)',
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              new MaterialButton(
                color: Colors.blue,
                onPressed: () {
                   bkgrdColor1 = Colors.white;
                   bkgrdColor2 = Colors.white;
                   bkgrdColor3 = Colors.white;                                      
                  questionNumber = 0;
                  finalScore = 0;
                  choiceSequence = 0;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuScreen()),
                  );
                },
                child: new Text(
                  'Main Menu',
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
