
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:yourpharmacy/Cubit/cubit.dart';
import 'package:yourpharmacy/Layout/see_all.dart';
import 'package:yourpharmacy/components/constants/Variable.dart';
import 'package:yourpharmacy/components/model/model.dart';
import '../functions/function.dart';


void InternetDialog(BuildContext context) {
  final AlertDialog a = AlertDialog(
    content: Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          Lottie.asset('assets/image/noint.json', height: 100, width: 100),
          SizedBox(
            height: 10,
          ),
          Text(
            "No internet connection Check connection",
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child:
                    Text("Cancel", style: TextStyle(color: HexColor('800016'))),
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  //Navigator.of(context).pop();
                },
                child: Text(
                  "Connect",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext c) {
        return a;
      },
      barrierDismissible: false);
}

void LoadingDialog(BuildContext context) {
  final AlertDialog a = AlertDialog(
    content: Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          Lottie.asset('assets/image/loading.json', height: 80, width: 80),
          SizedBox(
            height: 10,
          ),
          Text(
            "Loading",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          // SizedBox(
          //   width: double.infinity,
          //   child: RaisedButton(
          //     onPressed: (){
          //       Navigator.of(context).pop();
          //     },
          //     child: Text("Close"),
          //     color: Colors.blue,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //   ),
          // ),
        ],
      ),
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext c) {
        return a;
      },
      barrierDismissible: true);
}

Directionality R_TO_L(widget) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: widget,
  );
}


Widget Line() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: double.infinity,
      height: 2,
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(50),
      ),
    ),
  );
}

SizedBox Size(double s, int t) {
  if (t == 1) {
    return SizedBox(height: s);
  } else {
    return SizedBox(width: s);
  }
}


Widget TextForm({required TextInputType type, required String text,}) => Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: TextFormField(
        keyboardType: type,
        decoration: InputDecoration(
          labelText: text,
        ),
      ),
    );

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  Text(
                    'Login Now',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'User Name',
                      prefixIcon: Icon(Icons.account_circle_outlined) ,
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.all(Radius.circular(15.0))
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.visibility_outlined) ,
                      prefixIcon: Icon(Icons.lock_outline) ,
                      border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(15.0))
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed:(){},
                        child: Text(
                          'Forget Password ?',
                          style: TextStyle(
                            color: Colors.red,),
                        )),
                  ),
                  SizedBox(height: 5),
                  MaterialButton(
                    child: Text(
                      'Login'.toUpperCase(),
                      style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    color: HexColor('150050'),
                    minWidth: 350,
                    height: 40,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      // side: BorderSide(color: Colors.white, width: 3),
                    ),
                    onPressed: (){},

                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account ?',
                        style: TextStyle(
                          color: Colors.blueGrey,),
                      ),
                      TextButton(onPressed:(){
                        NavigatorToPage(context,Register());
                      },
                          child: Text(
                            'Signup'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.green,),
                          ))
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'or login with',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.transparent,
                        child:  IconButton(
                         icon: Icon(
                           FontAwesomeIcons.facebook,size: 30,color: HexColor('150050'),),
                         onPressed: (){},),
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.transparent,
                        child:  IconButton(
                          icon: Icon(
                            FontAwesomeIcons.twitter,size: 30,color: HexColor('150050'),),
                          onPressed: (){},),
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.transparent,
                        child:  IconButton(
                          icon: Icon(
                            FontAwesomeIcons.instagram,size: 30,color: HexColor('150050'),),
                          onPressed: (){},),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Register extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Pharmacy"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  Text(
                    'Register'.toUpperCase(),
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Fall Name',
                      prefixIcon: Icon(FontAwesomeIcons.user) ,
                      border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(15.0))
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'User Name',
                      prefixIcon: Icon(Icons.account_circle_outlined) ,
                      border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(15.0))
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.alternate_email) ,
                      border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(15.0))
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      prefixIcon: Icon(Icons.phone) ,
                      border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(15.0))
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.visibility_outlined) ,
                      prefixIcon: Icon(Icons.lock_outline) ,
                      border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(15.0))
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      suffixIcon: Icon(Icons.visibility_outlined) ,
                      prefixIcon: Icon(Icons.lock_outline) ,
                      border: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(15.0))
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  MaterialButton(
                    child: Text(
                      'Register'.toUpperCase(),
                      style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    color: Colors.blue,
                    minWidth: 350,
                    height: 40,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      // side: BorderSide(color: Colors.white, width: 3),
                    ),
                    onPressed: (){},

                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You have an account',
                        style: TextStyle(
                          color: Colors.blueGrey,),
                      ),
                      TextButton(onPressed:(){
                        NavigatorToPage(context,Login());
                      },
                          child: Text(
                            'Login'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.green,),
                          ))
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget CategoryItem(String t,String i){
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        image: DecorationImage(
            image: NetworkImage(i),
            fit: BoxFit.cover
        )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(t,
          maxLines: 2,
          style: TextStyle(fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold),),
        )
      ],
    ),
  );
}

Widget CategoryHome(CategoryModel c){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize:MainAxisSize.min,
    children: [
      SizedBox(height: 10),
      CircleAvatar(
          radius: 40.0,
          backgroundImage: NetworkImage(c.image)
      ),
      SizedBox(height: 10),
      Text(c.title,
        maxLines: 2,
        style: TextStyle(fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
    ],
  );
}


Widget ListOfItem(String title,context,list){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                fontWeight: FontWeight.bold,
                  fontSize: 30),),
            Spacer(),
            TextButton(
              onPressed: (){
                NavigatorToPage(context ,SeeAll());
              },
              child:Text('See All',style: TextStyle(color: Colors.red,fontSize: 15),),)
          ],
        ),
      ),
      Container(
        height: 310,
        padding: EdgeInsets.only(top: 20),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (con,ind)=>MainItem(list[ind],context),
          separatorBuilder: (c,i)=>SizedBox(
            width: 10,
          ),
          itemCount: list.length,
        ),
      ),
      //Image.asset('assets/image/pink.png',height: 100,),
    ],
  );
}

Widget MainItem(Item o,context){
  AppCubit cubit=AppCubit.get(context);
  return Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Container(
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Image.network(
                      o.image,
                      width: 120,
                    height: 120,),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child:
                          Text(o.name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black,
                                fontSize: 20,
                              fontWeight: FontWeight.bold),),
                    ),),
                    SizedBox(height: 3,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                          child: Text(o.price,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),)),
                    ),
                    SizedBox(height: 3,),
                    if(o.priceA!=0)
                      Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                          child: Text(o.priceA!,
                            style: TextStyle(
                                color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                      child: Row(
                        children: [
                          // MaterialButton(
                          //   child: Text(
                          //     'Register'.toUpperCase(),
                          //     style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                          //   ),
                          //   color: Colors.blue,
                          //   minWidth: 350,
                          //   height: 40,
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          //     // side: BorderSide(color: Colors.white, width: 3),
                          //   ),
                          //   onPressed: (){},
                          //
                          // ),
                          IconButton(onPressed: null,
                            icon: o.isC?Icon(Icons.add_shopping_cart_outlined,
                              size: 25,
                              color: Colors.greenAccent,):Icon(Icons.add_shopping_cart_outlined,
                        size: 25,
                        color: Colors.black,)),
                          Spacer(),
                          IconButton(onPressed: (){
                            cubit.isFavorite;
                          },
                              icon: o.isF?Icon(Icons.favorite,
                                  size: 25,
                                  color: Colors.red):Icon(Icons.favorite_border,
                                  size: 25,
                                  color: Colors.black)
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 8),
            child: Container(
              width: 45,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                    ),
              ),
              child: Center(child: Text(o.offer!,style: TextStyle(color: Colors.white),)),
            ),
          ),

        ],
      ),
    ],
  );
}

Widget MainItem2(Item2 o){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: double.infinity,
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.center ,
        children: [
          Image.network(
            o.image,
            width: 120,
            height: 120,),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child:
                    Text(o.name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),
                  ),),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(o.price,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),)),
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(o.priceA!,style: TextStyle(color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),)),
                ),

              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){},
                  icon: o.isF?Icon(Icons.favorite,
                      size: 25,
                      color: Colors.red):Icon(Icons.favorite_border,
                      size: 25,
                      color: Colors.black)
              ),
              Spacer(),
              IconButton(onPressed: null,
                  icon: o.isC?Icon(Icons.add_shopping_cart_outlined,
                    size: 25,
                    color: Colors.greenAccent,):Icon(Icons.add_shopping_cart_outlined,
                    size: 25,
                    color: Colors.black,)),

            ],
          ),
        ],
      ),
    ),
  );
}


