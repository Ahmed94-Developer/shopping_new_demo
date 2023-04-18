import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key, required this.title});


  final String title;

  @override
  State<LoginScreen> createState() => _LoginScreenState(title);
}

class _LoginScreenState extends State<LoginScreen> {
  late String title;
  bool run = true;
  TextEditingController mail_phone_controller = TextEditingController();
  TextEditingController passWord_controller = TextEditingController();

  static final _formKey = GlobalKey<FormState>();
  String? email, password;
  bool remember = false;
  final List<String> errors = [];
  bool showSuffixMail = false;
  bool showSuffixPassword = false;



  _LoginScreenState(this.title);



  @override
  void initState() {
    super.initState();

  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text('تسجيل الدخـول',style: TextStyle(color: Colors.black,fontSize: 14)
            ,textAlign: TextAlign.center,),

          actions: [
            IconButton(
              icon: Icon(Icons.arrow_forward_ios,color: Colors.black,),
              onPressed: () => Navigator.of(context,rootNavigator: true).pop(),
            ),


          ],

        ),
        body: Form(
            key: _formKey,
            child:Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(16, 80,16, 0),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child:Column(
                    children: <Widget>[
                      Container(
                        width: 115,
                        height: 115,
                        decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0XFFFFCF40),
                        ),
                        child:Icon(Icons.shopping_cart,
                          shadows: <Shadow>[Shadow(color: Colors.black, blurRadius: 15.0)],
                          color: Colors.white,size: 70,),),
                      Padding(padding: EdgeInsets.only(top: 7),
                        child: Text('City Hyper',style: TextStyle(color: Colors.black54,fontSize: 15),),

                      ),
                      Padding(padding: EdgeInsets.only(top: 16),

                        child: TextFormField(
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.right,
                          controller: mail_phone_controller,

                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              setState((){
                                showSuffixMail = false;
                              });

                            }else if (value.isEmpty) {

                              setState((){
                                showSuffixMail = true;
                              });
                            }
                          },


                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'البريد الالكتروني أو رقم الهاتف',
                            prefixIcon: showSuffixMail
                                ? const Icon(Icons.info,
                                color: Colors.red)
                                : null,
                            contentPadding:
                            EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0,right: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38, width: 1.0),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black38, width: 1.0),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 18),
                        child: TextFormField(
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.right,
                          controller: passWord_controller,
                          textDirection: TextDirection.ltr,
                          obscureText: true,
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              setState((){
                                showSuffixPassword = false;
                              });

                            }else if (value.isEmpty) {

                              setState((){
                                showSuffixPassword = true;
                              });
                            }
                          },

                          decoration: InputDecoration(
                            filled: true,
                            prefixIcon: showSuffixPassword
                                ? const Icon(Icons.info,
                                color: Colors.red)
                                : null,
                            fillColor: Colors.white,
                            hintText: 'كـلمـة المـرور',
                            contentPadding:
                            EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0,right: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38, width: 1.0),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black38,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(25.7),
                            ),

                          ),
                        ),
                      ),
                      Align(alignment: Alignment.centerRight,
                          child:Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 0),child: Text('هل نسيت كلمة المرور',
                            style: TextStyle(color: Colors.black,decoration: TextDecoration.underline
                                ,fontSize: 16),),)

                      ),
                      Padding(padding: EdgeInsets.fromLTRB(4, 15, 4, 0),
                          child: SizedBox(
                            width:MediaQuery.of(context).size.width,
                            height: 36,
                            child: MaterialButton(
                              onPressed: (){},
                              color: Colors.green,
                              child: Text("login"),
                            ),)
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(

                                child: Container(
                                    padding:EdgeInsets.fromLTRB(0, 0, 4, 0),
                                    child:Divider(color: Colors.black38,)
                                )
                            ),

                            Text("أو",style: TextStyle(color: Colors.black,fontSize: 16),),

                            Expanded(
                                child: Container(
                                    padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child:Divider(color: Colors.black38,)
                                )
                            ),

                          ],),

                      ),
                      Padding(padding: EdgeInsets.fromLTRB(4, 8, 4, 0),
                          child: SizedBox(
                            width:MediaQuery.of(context).size.width,
                            child:MaterialButton(

                              onPressed: (){
                                Navigator.pushNamed(context, '/signup');

                              },
                              color: Color(0XFFFFCF40),
                              child: Text('انشاء حساب جديد',style:
                              TextStyle(color: Colors.white,fontSize: 16),textAlign: TextAlign.center,),
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

                            ),)
                      ),
                    ],),)
            )));
  }

}