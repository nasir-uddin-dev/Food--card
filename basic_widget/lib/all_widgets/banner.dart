import 'package:flutter/material.dart';

class Banner_Wid extends StatelessWidget {
  const Banner_Wid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),

        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: ClipRRect(
              child: Banner(
                message: "Awesome",
                location: BannerLocation.topEnd,
                color: Colors.red,
                child: Container(
                  color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: Column(
                    
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(
                        "https://static.vecteezy.com/system/resources/thumbnails/049/139/500/small/serene-rainforest-scene-with-lush-green-foliage-and-gentle-rainfall-natural-background-for-relaxation-photo.jpg",
                         fit: BoxFit.cover,
                         width: double.infinity,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Nature is always beautiful", style: TextStyle(color: Colors.white, fontSize: 20),)
                        ],
                      )
                    ],
                  ),
                ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}