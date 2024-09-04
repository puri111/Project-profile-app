// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:flutter/material.dart';

void main() { 
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);
  
  @override
    Widget build (BuildContext context) { 
      return MaterialApp( 
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
      primarySwatch: Colors.blue,
      visualDensity:VisualDensity.adaptivePlatformDensity 
       ),
       home: Scaffold(
        appBar: AppBar( 
          title: const Text('Profile App'), 
           ), 
           body: const
           ProfilePage(), 
            ),
            );
          }
        }
        
        class ProfilePage extends StatelessWidget { 
          // ignore: use_key_in_widget_constructors
          const ProfilePage({Key? key}) : super(key: key);
          @override
          Widget build(BuildContext context) { 
            return SingleChildScrollView( 
              padding: const EdgeInsets.all(20.0),
              child: Column( 
                children: <Widget> [ 
               CircleAvatar( 
                radius: 80,
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/178163989?v=4' )
                 ),
                 const SizedBox(height: 20),
                 Text('Purity Amaechi',
                 style: Theme.of(context)
                 .textTheme
                 .bodyLarge
                 ?.copyWith(fontWeight: FontWeight.bold)
                  ), 
                  const SizedBox(height: 10,),
                  Text( 'I am a mobile Developer( flutter Developer)',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 20),
                  Card( 
                    elevation: 4.0,
                    child: Column(children: <Widget> [ 
                      const ListTile( 
                        leading: 
                        Icon(Icons.cake), 
                        title: Text('Birth Day'),
                        subtitle: Text('8th November'),
                         ),
                         ListTile( 
                          leading: const  
                          Icon(Icons.web),
                          title: const Text('Website'),
                          subtitle: const Text(''), 
                          onTap: () {},
                           ),
                          const ListTile( 
                            leading:
                            Icon(Icons.email),
                            title: Text('purityamaechi721@gmail.com'), 
                             ),
                
                    ],
                     ),
                      ), 
                      
                      const SizedBox(height: 20,),
                      Wrap( 
                        spacing: 10, 
                        children:<Widget> [ 
                          IconButton(
                            icon: const Icon(Icons.code), 
                            onPressed: () {}, 
                            color:Colors.black,
                            tooltip: 'GitHub',
                             ),
                             IconButton(
                              icon: const Icon(Icons.facebook),
                              onPressed: () {},
                              color: Colors.blue,
                              tooltip:'facebook',
                               ),
                               IconButton(
                                icon: const Icon(Icons.link),
                                onPressed: () {},

                          ),
                       ], 
                        )
                         ]
                      )
                       );
                       }
                        }
 

  
