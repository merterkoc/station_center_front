import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:station_center/src/home/bloc/home_bloc.dart';
import 'package:station_center/src/home/widget/map.dart';
import 'package:station_center/src/library/station_center_library.dart';
import 'package:progress_manager/progress_manager.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(state.selectedStation?.name ?? appName,
                  style: const TextStyle(shadows: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 9.0,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0.0, 1.0),
                    )
                  ])),
              actions: [
                IconButton(
                    onPressed: () async {
                      LoaderProvider().decrement();
                      await  Future.delayed(const Duration(seconds: 3), () {
                        LoaderProvider().increment();
                      });
                      print('decremented');
                    },
                    icon: Icon(Icons.close)),
                IconButton(
                    onPressed: () async{
                      LoaderProvider().increment();
                      await  Future.delayed(const Duration(seconds: 3), () {
                        LoaderProvider().decrement();
                      });
                      print('incremented');
                    },
                    icon: Icon(Icons.add)),
              ],
            ),
            body: SafeArea(
              top: false,
              maintainBottomViewPadding: true,
              bottom: false,
              child: Stack(
                children: const [
                  MapWidget(),
                ],
              ),
            ));
      },
    );
  }
}

class MenuIcon extends StatelessWidget {
  const MenuIcon({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: const ShapeDecoration(
        color: Colors.white,
        shadows: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(0.0, 0.0),
          )
        ],
        shape: CircleBorder(),
      ),
      child: IconButton(
        icon: SvgPicture.asset(
          icon,
          height: 24,
          width: 24,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
