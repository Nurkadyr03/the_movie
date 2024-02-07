import 'package:flutter/material.dart';
import 'package:the_movie/appImages/app_images.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemExtent: 163,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 8, color: Colors.grey, offset: Offset(0, 2)),
                    ]),
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: const [
                    Image(
                      image: AssetImage(AppImages.image),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text("Titanic ",
                          maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text("April 7 , 2021 , new Movie",
                          maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(height: 20),
                          Text(
                            "hbxshbxsanxksmqopwqpJDMEIOWHFCUIWHFIEFCKDSUHDCIUhurheneihfieolcdghghtfgdgrgvdgvdgvcgdtcstgvtgcdgcdsgdvgfs tnkc",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      
                    ),
                    SizedBox(width: 12),
                  ],
                ),
              ),
              Material(
                 color:Colors.transparent,
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  onTap:() {
                    print("1212");
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
