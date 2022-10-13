import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _firstController = TextEditingController();
  final _lastController = TextEditingController();
  final _emailController = TextEditingController();
  final _areaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _fromKey = GlobalKey<FormState>();    
    return Scaffold(
      appBar: AppBar(title: Text("Juni's"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                //color: Colors.amber,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/logo/logo.png"),
                        SizedBox(height: 20,),
                        const Text("Selamat Datang",style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 20                                             
                          ),),
                      const  Text("'Sambutan yang sangat hangat untuk Anda! Sangat menyenangkan memilik Anda di antara kami'",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,                         
                          ),
                          ),
                          LayoutBuilder(
                            builder: (context,constraints){
                              return Form(
                              key: _fromKey,
                              child: Column(
                                
                                children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,top: 40),
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[                                        
                                              Row(
                                                children: <Widget>[
                                                   Expanded(child: Text("First Name")),
                                                   Expanded(child: Text("Last Name")),                                    
                                                ],
                                              ),
                                             Row(
                                                children: <Widget>[
                                                  Expanded(
                                            flex: 15,
                                           child: Padding(
                                             padding: const EdgeInsets.only(right: 50),
                                             child: TextFormField(                                      
                                           controller: _firstController,
                                           keyboardType: TextInputType.text,
                                           style: TextStyle(fontSize: 14),  
                                           decoration: InputDecoration(
                                             
                                             filled: true,
                                             fillColor: Colors.grey[300]
                                           ),                                
                                             ),
                                           ),
                                           ),
                                           Expanded(
                                            flex: 15,
                                           child: Padding(
                                             padding: const EdgeInsets.only(right: 50),
                                             child: TextFormField(                                      
                                           controller: _lastController,
                                           keyboardType: TextInputType.text,
                                           style: TextStyle(fontSize: 14),  
                                           decoration: InputDecoration(
                                             
                                             filled: true,
                                             fillColor: Colors.grey[300]
                                           ),                                
                                             ),
                                           ),
                                           )                                  
                                                ],
                                              ),
                                              Text("Email"),
                                              Padding(
                                             padding: const EdgeInsets.only(right: 50),
                                             child: TextFormField(                                      
                                           controller: _emailController,
                                           keyboardType: TextInputType.emailAddress,
                                           style: TextStyle(fontSize: 14),  
                                           decoration: InputDecoration(                                           
                                             filled: true,
                                             fillColor: Colors.grey[300]
                                           ),                                
                                             ),
                                           ),
                                            Text("What we can help you with ?"),
                                              Padding(
                                             padding: const EdgeInsets.only(right: 50),
                                             child: TextFormField(                                      
                                           controller: _areaController,
                                           maxLines: 5,
                                           keyboardType: TextInputType.text,
                                           style: TextStyle(fontSize: 14),  
                                           decoration: InputDecoration(                                           
                                             filled: true,
                                             fillColor: Colors.grey[300]
                                           ),                                
                                             ),
                                           ),
                                           ElevatedButton(
                                            child: Text("Submit"),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.blue
                                            ),
                                            onPressed: () { 
                                            AlertDialog alert=  AlertDialog(
                                              title: Text("Welcome",style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold
                                              ),),
                                              content: Container(
                                                child: Column(
                                                  children: <Widget>[
                                                    Text(_firstController.text+_lastController.text),
                                                    Text(_emailController.text),
                                                    Text(_areaController.text)
                                                  ],
                                                ),
                                              ),
                                              actions: [
                                                TextButton(
                                                  child: Text('Ok'),
                                                  onPressed: () => Navigator.of(context).pop(),
                                                ),
                                              ],
                                            );
                                            showDialog(context: context, builder: (context)=>alert);
                                            },                                            
                                           )
                                            ],
                                          ),
                                        ),
                                      )
                                       
                                    
                                  
                                ],
                              ),
                            );
                            },                       
                          )
                      ],
                    ),
                  ),
            )
          ),
        ),
      ),
    );
  }
}