part of 'pages.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final List<bool> _selections1 = List.generate(13, (index) => false);
  final List<bool> _selections2 = List.generate(8, (index) => false);
  final List<String> _genre = [
    'Drama',
    'thriller',
    'comedy',
    'fantasy',
    'romance',
    'sci-fi',
    'adventure',
    'sports',
    'action',
    'western',
    'horror',
    'musical',
    'mystery'
  ];
  final List<String> _lang = [
    'English',
    'Mandarin',
    'Hindi',
    'Spanish',
    'French',
    'Arabic',
    'Russian',
    'Portuguese'
  ];

  final ScrollController _scrollContollerOne = ScrollController();
  final ScrollController _scrollContollerTwo = ScrollController();

  @override
  void dispose() {
    _scrollContollerOne.dispose();
    _scrollContollerTwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width - 50;
    var h = MediaQuery.of(context).size.height - 257;
    return Scaffold(
      backgroundColor: const Color(0xFF393E46),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Container(
              width: w,
              height: h * 2 / 5,
              margin: const EdgeInsets.fromLTRB(25, 63, 25, 23.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: w,
                    height: (h * 2 / 5) * 2 / 5,
                    padding: EdgeInsets.only(right: w / 4),
                    child: const Text(
                      "What's you're into? Let us recommend it for you!",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFFFFDF00),
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w,
                    height: (h * 2 / 5) * 3 / 5,
                    child: RawScrollbar(
                      controller: _scrollContollerOne,
                      thumbVisibility: true,
                      trackVisibility: false,
                      thickness: 4,
                      thumbColor: const Color(0xFFFFDF00),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _scrollContollerOne,
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1 / 3, crossAxisCount: 3),
                          itemCount: 13,
                          itemBuilder: (BuildContext context, int index) {
                            return LayoutBuilder(
                                builder: (context, constraints) {
                              return ToggleButtons(
                                constraints: BoxConstraints.expand(
                                    width: constraints.maxWidth - 4,
                                    height: constraints.maxHeight - 4),
                                renderBorder: true,
                                color: const Color(0xFFFFDF00),
                                borderColor: const Color(0xFFFFDF00),
                                borderWidth: 1,
                                borderRadius: BorderRadius.circular(25),
                                fillColor: const Color(0xFFDAA520),
                                selectedBorderColor: const Color(0xFFDAA520),
                                selectedColor: Colors.white,
                                isSelected: [_selections1[index]],
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Text(_genre[index],
                                        style: const TextStyle(fontSize: 12)),
                                  )
                                ],
                                onPressed: (pressIndex) {
                                  setState(() {
                                    if (_selections1[index] == true) {
                                      _selections1[index] = false;
                                    } else {
                                      _selections1[index] = true;
                                    }
                                  });
                                },
                              );
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: w,
              height: h * 2 / 5,
              margin: const EdgeInsets.fromLTRB(25, 23.5, 25, 86),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: w,
                    height: (h * 2 / 5) * 2 / 5,
                    padding: EdgeInsets.only(right: w / 4),
                    child: const Text(
                      'Which one you Understand? We will filter it!',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFFFFDF00),
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w,
                    height: (h * 2 / 5) * 3 / 5,
                    child: RawScrollbar(
                      controller: _scrollContollerTwo,
                      thumbVisibility: true,
                      trackVisibility: false,
                      thickness: 4,
                      thumbColor: const Color(0xFFFFDF00),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _scrollContollerTwo,
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1 / 3, crossAxisCount: 3),
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return LayoutBuilder(
                                builder: (context, constraints) {
                              return ToggleButtons(
                                constraints: BoxConstraints.expand(
                                    width: constraints.maxWidth - 4,
                                    height: constraints.maxHeight - 4),
                                renderBorder: true,
                                color: const Color(0xFFFFDF00),
                                borderColor: const Color(0xFFFFDF00),
                                borderWidth: 1,
                                borderRadius: BorderRadius.circular(25),
                                fillColor: const Color(0xFFDAA520),
                                selectedBorderColor: const Color(0xFFDAA520),
                                selectedColor: Colors.white,
                                isSelected: [_selections2[index]],
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Text(_lang[index],
                                        style: const TextStyle(fontSize: 12)),
                                  )
                                ],
                                onPressed: (pressIndex) {
                                  setState(() {
                                    
                                    if (_selections2[index] == true) {
                                      _selections2[index] = false;
                                    } else {
                                      _selections2[index] = true;
                                    }
                                  });
                                },
                              );
                            });
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
          Container(
            width: w + 100,
            height: h / 5,
            padding: const EdgeInsets.fromLTRB(34.3, 23, 34.3, 23),
            margin: const EdgeInsets.only(bottom: 15),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: w / 2 - 17.5,
                    height: 34,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFFFFDF00),
                          side: const BorderSide(
                              width: 1, color: Color(0xFFFFDF00)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) {
                              return const SignUp();
                            },
                          ));
                        },
                        child: const Text(
                          'Back',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                  ),
                  SizedBox(
                    width: w / 2 - 17.5,
                    height: 34,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFDF00),
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        selectedGenres(context);
                        selectedLanguage(context);
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return const SuccessPage();
                          },
                        ));
                      },
                      child: const Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    
  }

  Future<void> selectedGenres(BuildContext context) async {
    List<String> selectedGenres = [];
    for (int i = 0; i < _selections1.length; i++) {
      if (_selections1[i]) {
        selectedGenres.add(_genre[i]);
      }
    }

    // String uid = FirebaseAuth.instance.currentUser!.uid;
    String userId = Provider.of<UserIdProvider>(context, listen: false).userId;

    debugPrint('user : $userId');

    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .update({
            'genre': selectedGenres,
          });

    } catch (e) {
      return;
      // Handle error appropriately
    }
  }

  Future<void> selectedLanguage(BuildContext context) async {
    List<String> selectedLanguage = [];
    for (int i = 0; i < _selections2.length; i++) {
      if (_selections2[i]) {
        selectedLanguage.add(_lang[i]);
      }
    }

    // String uid = FirebaseAuth.instance.currentUser!.uid;
    String userId = Provider.of<UserIdProvider>(context, listen: false).userId;

    debugPrint('user : $userId');

    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .update({
            'language': selectedLanguage,
          });

    } catch (e) {
      return;
      // Handle error appropriately
    }
  }

  // Future<void> saveSelectedGenres(List<String> selectedGenres) async {
  //   String uid = FirebaseAuth.instance.currentUser!.uid;

  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('users')
  //         .doc(uid)
  //         .update({
  //           'selectedGenres': selectedGenres,
  //         });

  //   } catch (e) {
  //     return;
  //     // Handle error appropriately
  //   }
  // }

}
