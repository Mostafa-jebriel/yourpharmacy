
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:yourpharmacy/Cubit/State.dart';
import 'package:yourpharmacy/Cubit/cubit.dart';
import 'package:yourpharmacy/components/Theme/themes.dart';
import 'package:yourpharmacy/components/constants/Variable.dart';
import 'package:yourpharmacy/components/widget/widget.dart';

class Profile extends StatelessWidget {

  bool isLog=true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context)=>AppCubit(),
        child: BlocConsumer<AppCubit,AppStates>(
          listener:(con,sta){} ,
          builder: (con,sta){
            return ConditionalBuilder(
              condition: isLog,
              builder: (con)=>Scaffold(
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        CircleAvatar(
                          radius: 80.0,
                          backgroundImage: NetworkImage(
                              "https://avatars.githubusercontent.com/u/87562935?v=4"),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Mostafa Mohammed',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        SizedBox(height: 10),
                        MaterialButton(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.white),
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
                        ListTile(
                          title: Text('Favorites',style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.arrow_right,
                            size: 30,
                            color: Colors.black,),
                        ),
                        ListTile(
                          title: Text('Orders',style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.arrow_right,
                            size: 30,
                            color: Colors.black,),
                        ),
                        ListTile(
                          title: Text('Payment',style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.arrow_right,
                            size: 30,
                            color: Colors.black,),
                        ),
                        ListTile(
                          title: Text('Address',style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.arrow_right,
                            size: 30,
                            color: Colors.black,),
                        ),
                        ListTile(
                          title: Text('Help',style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.arrow_right,
                            size: 30,
                            color: Colors.black,),
                        ),
                        ListTile(
                          title: Text('call us',style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.arrow_right,
                            size: 30,
                            color: Colors.black,),
                        ),
                        MaterialButton(
                          child: Text(
                            'Sing Out',
                            style: TextStyle(color: Colors.red),
                          ),
                          //color: Colors.blue,
                          minWidth: 350,
                          height: 40,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            // side: BorderSide(color: Colors.white, width: 3),
                          ),
                          onPressed: (){},

                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ) ,
              fallback: (con)=>Login(),
            );
          },
        )

    );
  }
}
