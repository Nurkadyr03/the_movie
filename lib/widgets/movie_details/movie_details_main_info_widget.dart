import 'package:flutter/material.dart';
import 'package:the_movie/appImages/app_images.dart';
import 'package:the_movie/widgets/elements/radial_percent_widget.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopPostersWidget(),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: _MovieNameWidget(),
        ),
        _ScoreWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
          child: _SummaryWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _OverviewWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _DescriptionWidget(),
        ),
        const SizedBox(height: 20),
        _PeopleWidget(),
      ],
    );
  }
}

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "description_sdncjnskxamslosijoalxsjscsjdcnsiucnskcnsivn isdecisn uvheckscd ensci",
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class _OverviewWidget extends StatelessWidget {
  const _OverviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Overview",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold));
  }
}

class _TopPostersWidget extends StatelessWidget {
  const _TopPostersWidget({super.key});
  //здесь будет две фото один сверху другого

  @override
  Widget build(BuildContext context) {
    return Stack(
      //здесь будет две фото один сверху другого
      children: [
      
         SizedBox(
          width: double.infinity,
          
            child: Image(
              image: AssetImage(AppImages.backImage  ),
              fit: BoxFit.cover,
            ),
          ),
         Positioned(
          top:20,
          left: 20,
          bottom: 20,
           child: Image(
            image: AssetImage(AppImages.image),
                   ),
         ),
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      maxLines: 3,
      text: TextSpan(children: [
        TextSpan(
            text: "Name Films ",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 21,
                color: Colors.white)),
        TextSpan(
            text: "(2021)",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 16))
      ]),
    );
  }
}

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: RadialPercentWidget(
                  child: Text(
                    "72",
                    style: TextStyle(color: Colors.white),
                  ),
                  percent: 0.72,
                  fillColor: Color.fromARGB(255, 10, 23, 25),
                  lineColor: Color.fromARGB(255, 37, 203, 103),
                  freeColor: Color.fromARGB(255, 25, 54, 31),
                  lineWidth: 3,
                ),
              ),
              const SizedBox(width: 10),
              Text("Score User", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        Container(height: 15, width: 1, color: Colors.grey),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              const Icon(Icons.play_arrow),
              Text("Play thrayler", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}

class _SummaryWidget extends StatelessWidget {
  const _SummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "R 04/29/2021, 1h 49m, Action, Adventure, Theriller, War",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class _PeopleWidget extends StatelessWidget {
  const _PeopleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final nameStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
    final nameTitleStyle = TextStyle(
      color: Colors.grey,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Stefano Solima ", style: nameStyle),
                Text("Director", style: nameTitleStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Stefano Solima ", style: nameStyle),
                Text("Director", style: nameTitleStyle),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Stefano Solima ", style: nameStyle),
                Text("Director", style: nameTitleStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Stefano Solima ", style: nameStyle),
                Text("Director", style: nameTitleStyle),
              ],
            ),
          ],
        )
      ],
    );
  }
}
