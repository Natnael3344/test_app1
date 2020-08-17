import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart' as words;
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomepage(),
      routes: <String, WidgetBuilder>{
        '/settings': (BuildContext context) => new Internal(),
      },
    );
  }
}
class MyHomepage extends StatefulWidget{
  @override
  _MyHomepageState createState()=>_MyHomepageState();
}



class _MyHomepageState extends State<MyHomepage>{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          backgroundColor: Colors.pinkAccent,
          body: SingleChildScrollView(
            child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[


                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage:AssetImage('images/cross.jpg'),
                    ),
                    Text('shalom',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                    Text('የመዝሙር ደብተር',
                        style: TextStyle(
                        fontFamily:'Source Sans Pro',
                          fontSize: 20.0,
                          letterSpacing: 2.5,
                          color: Colors.teal.shade100,
                          fontWeight: FontWeight.bold,
                    ),
                    ),
                     SizedBox(
                       height: 20.0,
                       width: 140.0,
                       child: Divider(
                         color: Colors.teal.shade100
                       ),
                     ),
                     Card(
                         margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 25.0),
                         color: Colors.white,

                        child: ListTile(
                       leading: Icon(Icons.supervised_user_circle,
                         color: Colors.blueGrey,
                       ),
                       title:TextField(
                         obscureText: false,
                         decoration: const InputDecoration(
                           labelText: 'User Name',
                         ),
                         style: TextStyle(
                           fontFamily:'Source Sans Pro',
                           fontSize: 15.0,
                           color: Colors.teal.shade900,
                         ),
                       ),
                     ),
                            ),

                    Card (
    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
    color: Colors.white,
                          child: ListTile(
                          leading:(
                          Icon(Icons.lock,
                            color: Colors.blueGrey,
                          )),
                          title:TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                            ),
                              style: TextStyle(
                                fontFamily:'Source Sans Pro',
                                fontSize: 15.0,
                                color: Colors.teal.shade900,
                              ),
                            ),
                          ),
                          ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        RaisedButton(    onPressed: () => Navigator.of(context).pushNamed('/settings'),
                          textColor: Colors.white,
                          color: Colors.blueGrey,
                          child: Text('Sign in',
                        style: TextStyle(
                          fontSize: 20,fontFamily:'Source Sans Pro',
                        ),
                        ),
                        ),
                      ],
                    ),
                    ),
                  ],
                ),
    ),
          ),
        );
  }
  }
class Internal extends StatefulWidget{
  @override
  _InternalState createState()=>_InternalState();
}
class _InternalState extends State<Internal> {
  bool isSearching=false;

  Photo(int number){
    return Scaffold(
      body: SafeArea(
      child: Container(
        child: Container(
          child: Column(
            children: <Widget>[
              AppBar(title: Text('የመዝሙር ደብተር'),backgroundColor: Colors.greenAccent,),
            ],
          ),
        ),
      decoration: BoxDecoration(
             image: DecorationImage(
              image: AssetImage('images/image$number.jpg'),
              fit: BoxFit.cover
          )
      ),
      ),
    ),
    );
  }

Widget Screen(BuildContext context,int number,String text) {
  return Container(
    color: Colors.black,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: new RaisedButton.icon(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 80.0),
          color: Colors.blue,
          label: Text('$text'),
          icon: Icon(Icons.music_note),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Photo(number)),
            );
          }

      ),
    ),
  );

}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {

            },
          ),
          titleSpacing: 50,
       title: !isSearching?Text('የመዝሙር ደብተር',
         style: TextStyle(fontSize: 25,fontFamily: 'Pacifico',fontWeight: FontWeight.w600),)
           :TextField(style:TextStyle(color: Colors.white),decoration: InputDecoration(
           icon: Icon(Icons.search,color:Colors.white ,),
           hintText: "search here",hintStyle: TextStyle(
         color: Colors.white
       )),),
       actions: <Widget>[
         isSearching?   IconButton(icon: Icon(Icons.cancel), onPressed: ()
         {
           setState(() {
             this.isSearching=false;

           });
         }):

    IconButton(icon: Icon(Icons.search), onPressed: ()
    {
setState(() {
  this.isSearching=true;

});
    })
       ],
      ),
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Screen(context,1,'መዝሙር 1'),
             Screen(context,2,'መዝሙር 2'),
             Screen(context,3,'መዝሙር 3'),
             Screen(context,4,'መዝሙር 4'),
             Screen(context,5,'መዝሙር 5'),
             Screen(context,6,'መዝሙር 6'),
             Screen(context,7,'መዝሙር 7'),
             Screen(context,8,'መዝሙር 8'),
             Screen(context,9,'መዝሙር 9'),
             Screen(context,10,'መዝሙር 10'),
             Screen(context,11,'መዝሙር 11'),
             Screen(context,12,'መዝሙር 12'),
             Screen(context,13,'መዝሙር 13'),
             Screen(context,14,'መዝሙር 14'),
             Screen(context,15,'መዝሙር 15'),


           ],
         ),
       ),
       ),
            );
  }

  }


