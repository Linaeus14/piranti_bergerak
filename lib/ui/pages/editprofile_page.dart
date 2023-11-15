part of 'pages.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool uploadPressed = false;
  bool backPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFF393E46),
      body: Center(
        child: ListView(
          children: [

            Column(
              children: [
                const SizedBox(height: 60),

                const Text(
                  "Edit Profile",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:   Color(0xFFFFDF00),
                  ),
                ),

                const SizedBox(height: 70),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Input Username",
                      labelText: "Username",
                      floatingLabelBehavior: FloatingLabelBehavior.always,

                      labelStyle: const TextStyle(
                        color: Color(0xFFFFDF00),
                        fontSize: 22.0,
                      ),
                      hintStyle: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16.0
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        borderSide: const BorderSide(color: Color(0xFFFFDF00)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        borderSide: const BorderSide(color: Color(0xFFFFDF00)), // Mengubah warna border saat dalam fokus
                      ),
                    ),
                    style: const TextStyle(color: Color(0xFFFFFFFF)),
                    onChanged: (String value) {},
                  ),
                ),

                const SizedBox(height: 50),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Input Password",
                      labelText: "Password",
                      floatingLabelBehavior: FloatingLabelBehavior.always,

                      labelStyle: const TextStyle(
                        color: Color(0xFFFFDF00),
                        fontSize: 22.0,
                      ),
                      hintStyle: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16.0
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        borderSide: const BorderSide(color: Color(0xFFFFDF00)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        borderSide: const BorderSide(color: Color(0xFFFFDF00)), // Mengubah warna border saat dalam fokus
                      ),
                    ),
                    style: const TextStyle(color: Color(0xFFFFFFFF)),
                    onChanged: (String value) {},
                  ),
                ),

                const SizedBox(height: 50),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 56.0),
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image : AssetImage("assets/Profile.png"),
                            fit: BoxFit.cover
                          ),
                          border: Border.all(color: const Color(0xFFFFDF00)),
                          borderRadius: BorderRadius.circular(70), // Menjadikan container menjadi bulat
                        ),
                      ),
                    ),

                    Column(
                      children: [

                        const Text(
                          "Pick a Photo!",
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 13,
                            color:   Color(0xFFFFFFFF),
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              uploadPressed = !uploadPressed;
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: uploadPressed ? const Color(0xFFDAA520) : const Color(0xFF393E46),
                            foregroundColor: const Color(0xFFDAA520), 
                            
                            side: BorderSide(
                              width: 1, 
                              color: uploadPressed ? const Color(0xFFDAA520) : const Color(0xFFFFDF00),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            
                          ),
                          child: Text(
                            'Upload',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              color: uploadPressed ? const Color(0xFF000000) : const Color(0xFFFFDF00),
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color(0xFFDAA520), 
                    backgroundColor: const Color(0xFFFFDF00),
                    padding: const EdgeInsets.symmetric(horizontal: 138.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Update",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      color:   Color(0xFF000000),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      backPressed = !backPressed;
                    });
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: backPressed ? const Color(0xFFDAA520) : const Color(0xFF393E46),
                    foregroundColor: const Color(0xFFDAA520), 
                    
                    side: BorderSide(
                      width: 1, 
                      color: backPressed ? const Color(0xFFDAA520) : const Color(0xFFFFDF00),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 149.0),
                  ),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      color: backPressed ? const Color(0xFF000000) : const Color(0xFFFFDF00),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}