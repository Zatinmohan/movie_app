part of '../home_page.dart';

class UserLocationWidget extends StatefulWidget {
  const UserLocationWidget({super.key});

  @override
  State<UserLocationWidget> createState() => _UserLocationWidgetState();
}

class _UserLocationWidgetState extends State<UserLocationWidget> {
  final GetIt sl = GetIt.instance;
  AddressModel? userAddress;
  @override
  void initState() {
    fetchUserAddress();

    super.initState();
  }

  Future<void> fetchUserAddress() async {
    userAddress = await sl.get<GeoLocationService>().fetchAddress();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: size * 0.065,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    userAddress?.name ?? "",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: size * 0.052,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 2.0),
              Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Text(
                  "${userAddress?.city}, ${userAddress?.state}",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: ColorConstants.kSecondarySubtitleTextColor,
                        fontSize: size * 0.038,
                        fontWeight: FontWeight.w400,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: CircleAvatar(
            radius: size * 0.06,
            backgroundColor: Colors.white,
            backgroundImage: Assets.images.shortLogo.provider(),
          ),
        ),
      ],
    );
  }
}
