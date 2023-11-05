import 'package:eval_ex/expression.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(
      useMaterial3: true,
    ),
    debugShowCheckedModeBanner: false,
    home: const Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String ans="";
  String anss="";
  String sol(String ans){
    Expression exp=Expression(ans);
    return exp.eval().toString();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: Colors.grey,
        body:
        Padding(

          padding: const EdgeInsets.fromLTRB(0,0,0,5),
          child: Column(


            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Container(
                color: Colors.blueGrey[500],
                height: 50,
                child:  const Center(child: Text('Calculator',style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),),),
              ),
              Container(
                color: Colors.white,
                height: 120,
                width: 500,
                child:  Padding(
                  padding: const EdgeInsets.fromLTRB(3,3,3,3),
                  child: Text(ans,
                  style:const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                color: Colors.white,

                height: 50,
                width: 500,
                child:  Padding(
                  padding: const EdgeInsets.fromLTRB(2,5,2,5),
                  child: Text('Ans= $anss',
                    style:const TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),

              const Divider(height: 5,color: Colors.black,thickness: 4,),
              const SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            ans="";
                            anss="";
                          });
                        },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                        iconSize: MaterialStatePropertyAll(50),
                      ),
                        child: const Text('AC',style: TextStyle(fontSize:20,color: Colors.red),),

                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                        onPressed: (){
                        setState(() {
                          ans=ans.substring(0,ans.length-1);
                        });
                        },
                      onLongPress: (){
                          setState(() {
                            ans="";
                          });
                      },
                        child:const Icon(Icons.arrow_back_outlined,color: Colors.blue,),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans=anss;
                          anss="";
                        });
                      },
                      child: const Icon(Icons.arrow_upward_sharp,color: Colors.yellow,),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {

                          if(!ans.endsWith('/')){
                            if(ans.isEmpty){ans="";}
                            else if(ans.endsWith('+') ||ans.endsWith('-')||ans.endsWith('*')){
                            ans=ans.substring(0,ans.length-1);
                              ans+="/";}
                            else{
                              ans+="/";
                            }
                          }
                        });
                      },
                      child: const Icon(CupertinoIcons.divide,color: Colors.white,),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans+="7";
                        });
                      },
                        child: const Text('7',style: TextStyle(fontSize:20,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans+="8";
                        });
                      },
                      child: const Text('8',style: TextStyle(fontSize:20,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans+="9";
                        });
                      },
                      child: const Text('9',style: TextStyle(fontSize:20,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          if(!ans.endsWith('*')){
                            if(ans.isEmpty){ans="";}
                            else if(ans.endsWith('+') ||ans.endsWith('-')||ans.endsWith('/')){
                              ans=ans.substring(0,ans.length-1);
                              ans+="*";}
                            else{
                              ans+="*";
                            }
                          }
                        });
                      },
                      child: const Icon(CupertinoIcons.multiply,color: Colors.white,),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans+="4";
                        });
                      },
                      child: const Text('4',style: TextStyle(fontSize:20,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans+="5";
                        });
                      },
                      child: const Text('5',style: TextStyle(fontSize:20,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans+="6";
                        });
                      },
                      child: const Text('6',style: TextStyle(fontSize:20,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          if(!ans.endsWith('-')){
                            if(ans.endsWith('+') ||ans.endsWith('/')||ans.endsWith('*')){
                              ans=ans.substring(0,ans.length-1);
                              ans+="-";}
                            else{
                              ans+="-";
                            }
                          }
                        });
                      },
                      child: const Icon(CupertinoIcons.minus,color: Colors.white,),
                    ),
                  )

                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans+="1";
                        });
                      },
                      child: const Text('1',style: TextStyle(fontSize:20,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans+="2";
                        });
                      },
                      child: const Text('2',style: TextStyle(fontSize:20,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans+="3";
                        });
                      },
                      child: const Text('3',style: TextStyle(fontSize:20,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          if(!ans.endsWith('+')){
                            if(ans.isEmpty){ans="";}
                            else if(ans.endsWith('/') ||ans.endsWith('-')||ans.endsWith('*')){
                              ans=ans.substring(0,ans.length-1);
                              ans+="+";}
                            else{
                              ans+="+";
                            }
                          }
                        });
                      },
                      child: const Icon(CupertinoIcons.plus,color: Colors.white,),
                    ),
                  )

                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          if(!ans.endsWith('/100')){
                            if(ans.isEmpty){ans="";}

                            else {
                              ans+="/100";
                            }
                          }
                        });
                      },
                      child: const Icon(Icons.percent,color: Colors.white,),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans+="0";
                        });
                      },
                      child: const Text('0',style: TextStyle(fontSize:20,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          ans+=".";
                        });
                      },
                      child: const Text('.',style: TextStyle(fontSize:20,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                      ),
                      onPressed: (){
                        setState(() {
                          anss=sol(ans);

                        });
                      },
                      child: const Icon(CupertinoIcons.equal,color: Colors.green,),
                    ),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
