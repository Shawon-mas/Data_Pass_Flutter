
import 'package:day_ten_bitm/PlayerModel.dart';
import 'package:day_ten_bitm/playerDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
    static List<String> playerName=['Messi','Neymar','Rolando','Xavi','Jamal'];
    static List url=[
      'https://img.olympicchannel.com/images/image/private/t_1-1_600/f_auto/v1538355600/primary/wfrhxc0kh2vvq77sonki',
      'https://psgtalk.com/wp-content/uploads/2021/04/Neymar-Metz-vs-PSG-Ligue-1-2021.jpg',
      'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg?tr=w-1200,h-900',
      'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltddb91c2516db3131/6237ba313557c96891badf02/Xavi.jpg?auto=webp&fit=crop&format=jpg&height=800&quality=60&width=1200',
      'https://images.squarespace-cdn.com/content/v1/58931e136b8f5b21e08707fb/1616055988306-G8S9X0XR6EV3U5M13X6A/jamal%2Bbhuyan%2Bdenmark%2Bbangladesh.jpeg?format=1000w'
    ];
    static List<String> countryName=['Argentina','Brazil','Purtogal','Spain','Bangladesh'];
    final List<PlayerModel> playerData=List.generate(playerName.length,
            (index) => PlayerModel('${playerName[index]}','${url[index]}','${countryName[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //   centerTitle: true,
      //   automaticallyImplyLeading: true,
      //   backgroundColor: Colors.orange[900],
      //   title: Text("Seip Student List",
      //     style: TextStyle(
      //
      //   ),),
      // ),
     body: ListView.builder(
         itemCount: playerData.length,
         itemBuilder: (context,index){
       return Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(5.0),
             child: Card(
               elevation: 20,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20),
               ),
               color: Colors.orange[900],
               child: SizedBox(
                 width: 370,
                 height: 100,
                 child: Center(
                   child: ListTile(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> PlayerDetails(playerModel: playerData[index],)));
                     },
                     title: Text(playerData[index].name,style: TextStyle(
                       color: Colors.white,
                       fontSize: 20,
                       fontWeight: FontWeight.bold
                     ),),
                     leading: ClipOval(
                       child: Image.network(playerData[index].ImageUrl,
                         width: 70,
                         height: 70,
                         fit: BoxFit.fill
                       ),
                     ),
                     subtitle:Text(playerData[index].country,style: TextStyle(
                       color: Colors.white70,

                     ),) ,

                   ),
                 ),
               ),
             ),
           ),
         ],
       );
     }
     ),
    );
  }
}
