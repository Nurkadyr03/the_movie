import 'package:flutter/material.dart';
import 'package:the_movie/appImages/app_images.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TopPostersWidget(),
        _MovieNameWidget(),
      ],
    );
  }
}

class _TopPostersWidget extends StatelessWidget {
  const _TopPostersWidget({super.key});
  //здесь будет две фото один сверху другого

  @override
  Widget build(BuildContext context) {
    return Stack(//здесь будет две фото один сверху другого
      children: [
        Image(
          image: AssetImage(AppImages.backImage),
        ),
        //  Positioned(
        //   top:20,
        //   left: 20,
        //   bottom: 20,
        //    child: Image(
        //     image: AssetImage(AppImages.??????),
        //            ),
        //  ),
      ],
    );
  }
}
class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}