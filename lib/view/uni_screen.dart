import 'package:flutter/material.dart';
import 'package:task3/controller/api_manager.dart';
import 'package:task3/model/uni_model.dart';
import 'package:task3/view/search_screen.dart';
class UniScreen extends StatefulWidget {
final data;
UniScreen([this.data]);
  @override
  State<UniScreen> createState() => _UniScreenState();
}

class _UniScreenState extends State<UniScreen> {
  @override
  void initState() {
    // TODO: implement initState
    getUni();
    super.initState();
  }
  var data;
  Uni_Model ? selectedUni;
  getUni()async{
   var data = await ApiManager.getUni("${widget.data??'Pakistan'}");
   selectedUni = Uni_Model.fromJson(data);
   print(selectedUni);

   setState(() {
     
   });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        print(selectedUni);
        getUni();
        Navigator.push(context, MaterialPageRoute(builder:(context) => SearchScreen(),));
      }),
      appBar: AppBar(title: Text("universities"),),
      body:selectedUni ==null?Center(
        child: SizedBox(height: 100,
        width: 100,
        child: CircularProgressIndicator.adaptive(),),
      ):
       Center(
         child: Column(
          children: [
            Text("${selectedUni!.name}"),
            // data == null? CircularProgressIndicator.adaptive():Text(data),
            // getUni()
            // SizedBox(height: 200,),
            // FloatingActionButton(onPressed: (){
              
            //   print(getUni());
            //   Navigator.push(context, MaterialPageRoute(builder:(context) => SearchScreen(),));
            // })
          ],
             ),
       )
    );
  }
}