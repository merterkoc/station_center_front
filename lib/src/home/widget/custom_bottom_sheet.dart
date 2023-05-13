import 'package:station_center/const/padding.dart';
import 'package:station_center/src/library/station_center_library.dart';

void showStationCenterBottomSheet(BuildContext context,
    {required Widget child}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
    builder: (context) => DraggableScrollableSheet(
      minChildSize: 0.2,
      maxChildSize: 0.9,
      expand: false,
      builder: (_, controller) => Padding(
        padding: AppPadding.horizontalLarge,
        child: Column(
          children: [
            _divider(),
            Expanded(
              child: SingleChildScrollView(
                controller: controller,
                child: child,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Padding _divider() {
  return Padding(
    padding: AppPadding.verticalMedium,
    child: Container(
      height: 4,
      width: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.grey,
      ),
    ),
  );
}
