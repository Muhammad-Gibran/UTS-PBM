import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp/model/place_model.dart';
import 'package:travelapp/screens/welcome/Home/widgets/recommended_card.dart';
import 'package:travelapp/screens/welcome/detailscreen/detail_screen.dart';
import 'package:travelapp/utilities/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Traveling extends StatelessWidget {
  const Traveling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 130, 57),
        automaticallyImplyLeading: true,
        title: Text(
          'Travel App',
          style: GoogleFonts.getFont(
            'Poppins',
            color: kWhiteClr,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/home.png",
                height: 35,
                width: 35,
                color: kPrimaryClr,
              ),
              Image.asset(
                "assets/calender.png",
                height: 35,
                width: 35,
                color: Colors.grey,
              ),
              Image.asset(
                "assets/bookmark.png",
                height: 35,
                width: 35,
                color: Colors.grey,
              ),
              Image.asset(
                "assets/bubble-chat.png",
                height: 35,
                width: 35,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context).loadString('assets/travel.json'),
        builder: (context, snapshot) {
          List<PlaceInfo> trv = parse(snapshot.data);
          return ListView.builder(
            itemCount: trv.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TravelingDetail(TravelingModel: trv[index]),
                    ),
                  );
                },
                child: ListTile(
                  leading: Image.asset(trv[index].image),
                  title: Text(trv[index].name),
                  contentPadding: const EdgeInsets.all(
                    8.0,
                  ),
                ),
              );
            },
          );
        },
      )),
    );
  }
}
