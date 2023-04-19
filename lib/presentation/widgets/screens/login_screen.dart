import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_new/business_logic/auth_cubit/login_cubit.dart';
import 'package:shopping_new/constants/strings.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key,});



  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 // late String title;
  bool run = true;
  TextEditingController mail_phone_controller = TextEditingController();
  TextEditingController passWord_controller = TextEditingController();

  static final _formKey = GlobalKey<FormState>();
//  String? email, password;
  bool remember = false;
  final List<String> errors = [];
  bool showSuffixMail = false;
  bool showSuffixPassword = false;



  _LoginScreenState();



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
          title: Text('SignIn',style: TextStyle(color: Colors.black,fontSize: 17)
            ,textAlign: TextAlign.center,),

        ),
        body: BlocConsumer<LoginCubit,LoginState>(
          listener: buildBlocListener,
          builder: (context,state){
             return _buildLoginScreen(context,state);
            }

        ) );
  }
  Widget _buildLoginScreen(BuildContext context,LoginState state){
    return  Form(
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
                        hintText: 'Enter this: client2@client2.com ',
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
                        hintText: 'password enter this : 123456',
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
                  Align(alignment: Alignment.centerLeft,
                      child:Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 0),child: Text('Forgot PassWord ?',
                        style: TextStyle(color: Colors.black,decoration: TextDecoration.underline
                            ,fontSize: 16),),)

                  ),
                  Padding(padding: EdgeInsets.fromLTRB(4, 15, 4, 0),
                      child: SizedBox(
                        width:MediaQuery.of(context).size.width,
                        height: 36,
                        child: MaterialButton(
                          onPressed: (){

                              buildOnPressed(context);


                          },
                          color: Colors.green,
                          child: buildChild(state),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius
                              .all(Radius.circular(20))),
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

                        Text("Or",style: TextStyle(color: Colors.black,fontSize: 16),),

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
                          child: Text('SignUp',style:
                          TextStyle(color: Colors.white,fontSize: 16),textAlign: TextAlign.center,),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

                        ),)
                  ),
                ],),)
        ));
  }
  void buildBlocListener(context, state) {
    if (state is LoginCompleted) {
      final data = state.login;
      if (data == true) {
        Navigator.of(context).pushNamed(homeScreen);
        SnackBar snackBar = SnackBar(content: Text("Login Successfully..."));
       ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        Navigator.of(context).pushNamed(homeScreen);

      }
    }
  }
  Widget buildButton(BuildContext context, LoginState state) {
    return ElevatedButton(
      onPressed: () => buildOnPressed(context),
      child: buildChild(state),
    );
  }
  Future<void> buildOnPressed(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      context
          .read<LoginCubit>()
          .onPressedLogin(mail_phone_controller, passWord_controller);
    }
  }

  Widget buildChild(LoginState state) {

    return state is LoginLoading
        ? CircularProgressIndicator.adaptive()
        : Text('Login',style: TextStyle(color: Colors.white),);
  }


}