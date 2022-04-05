import 'package:day_ten_bitm/PlayerModel.dart';
import 'package:flutter/material.dart';
class PlayerDetails extends StatelessWidget {
  final PlayerModel playerModel;
  const PlayerDetails({Key? key,required this.playerModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        title: Text(playerModel.name),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(playerModel.ImageUrl),
                    fit: BoxFit.cover),
                color: Colors.blue,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),

              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                width: double.maxFinite,
                height: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    SizedBox(
                      width: double.maxFinite,
                      height: 70,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.grey,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Player Name: ${playerModel.name}\nPlayer Country: ${playerModel.country}',style: TextStyle(
                           color: Colors.white,
                            fontSize: 20,
                          ),),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}


/*


 */
