import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_manager/progress_manager.dart';
import 'package:station_center/bloc_providers.dart';
import 'package:station_center/src/home/view/home.dart';
import 'package:station_center/src/library/station_center_library.dart';

class StationCenter extends StatelessWidget {
  const StationCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders(),
      child: MaterialApp(
        title: appName,
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'HindMadurai'),
        home: const ProgressManager(
          useDefaultLoading: false,
          overlayWidget: Center(
            child: CircularProgressIndicator(),
          ),
          child: HomeView(),
        ),
      ),
    );
  }
}
