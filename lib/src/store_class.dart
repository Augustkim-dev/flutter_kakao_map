import 'package:kakao_map_plugin/kakao_map_plugin.dart';

abstract class StoreClass {
  final String uid = "";
  final String storeName = "";
  final String address = "";
  final String markerImage = "";
  final LatLng location = LatLng(0.0, 0.0);
  final String detailInfo = "";
  final String phoneNumber = "";
  final String snsLink = "";
}

class BalletWareStore implements StoreClass {
  @override
  final String uid;

  @override
  final String address;

  @override
  final String detailInfo;

  @override
  final String phoneNumber;

  @override
  final String snsLink;

  @override
  final String markerImage = "assets/markers/restaurant.png";

  @override
  final String storeName;

  @override
  final LatLng location;

  BalletWareStore({
    required this.uid,
    required this.storeName,
    required this.location,
    required this.address,
    required this.detailInfo,
    required this.snsLink,
    required this.phoneNumber,
  });
}
