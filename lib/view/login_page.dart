import 'package:airportal/view/airports_list_page.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  var kullaniciAdiController = TextEditingController();
  var sifreController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xff3F7EA6),
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(95))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                              "Airportal",
                              style: TextStyle(
                                color: Color(0XFFF2B33D),
                                fontSize: 43,
                                fontFamily: 'KaushanScript',
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: SizedBox(
                              height: 250,
                              child: Image.asset(
                                  "assets/images/airport2.png")), //image
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 40.0, left: 40, right: 40),
                  child: TextFormField(
                    controller: kullaniciAdiController,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Mail zorunludur."),
                      EmailValidator(
                          errorText: 'Geçerli bir mail adresi yazınız')
                    ]),
                    decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 17, horizontal: 10),
                      filled: true,
                      fillColor: Color(0xffE6E7E9),
                      border: new OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 0.0, style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Kullanıcı Adı',
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 17.0, left: 40, right: 40),
                  child: TextFormField(
                    controller: sifreController,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Şifre zorunludur."),
                      MinLengthValidator(6,
                          errorText: "Şifre en az 6 karakter olmalıdır"),
                      MaxLengthValidator(15,
                          errorText: "Şifre 15 karakterden fazla olamaz")
                    ]),
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 17, horizontal: 10),
                      filled: true,
                      fillColor: Color(0xffE6E7E9),
                      border: new OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 0.0, style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Şifre',
                    ),
                    obscureText: _obscureText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 210),
                  child: SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        onPressed: () async {

                          // final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                          // sharedPreferences.setString("email", kullaniciAdiController.text);
                          // Get.to(kullaniciAdiController.text == "burak" ? HomePage() : LoginPage());

                          if (_formKey.currentState!.validate()) {
                            print("Validated");
                            if (kullaniciAdiController.text == "test@ankaref.com" && sifreController.text == "AnkaTest!*")
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AirportsListPage()));
                            }
                          } else {
                            print("Not Validated");
                          }






                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff3F7EA6),
                        ),
                        child: Text("İleri")),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
