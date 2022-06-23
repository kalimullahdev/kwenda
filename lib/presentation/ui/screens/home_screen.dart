import 'package:flutter/material.dart';
import 'package:kwenda/presentation/ui/base/custom_text_field.dart';
import 'package:kwenda/presentation/ui/screens/google_maps.dart';
import 'package:kwenda/presentation/ui/screens/image_text_button.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';
import 'package:kwenda/presentation/utill/images.dart';
import 'package:kwenda/presentation/utill/strings.dart';
import 'package:kwenda/presentation/utill/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: Column(
          children: const [],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Cr.transparent,
        shadowColor: Cr.transparent,
        leading: SizedBox(
          child: Center(
            child: InkWell(
              onTap: () => _scaffoldKey.currentState!.openDrawer(),
              child: Container(
                width: 40,
                height: 40,
                decoration: Styles.boxDecorationRoundedShadow,
                child: const Icon(
                  Icons.menu,
                  color: Cr.colorPrimary,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SizedBox(
                height: constraints.maxHeight * .8,
                child: const GoogleMapsScreen(),
              );
            },
          ),
          const HomeDraggableScrollableSheet(),
        ],
      ),
    );
  }
}

class HomeDraggableScrollableSheet extends StatelessWidget {
  const HomeDraggableScrollableSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: .4,
      minChildSize: .4,
      maxChildSize: .97,
      builder: (context, ScrollController scrollController) {
        return Container(
          color: Cr.whiteColor,
          width: Di.getScreenSize(context).width,
          height: Di.getScreenSize(context).height,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: Di.PSS),
            controller: scrollController,
            // physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Di.SBHD,
              Center(
                child: Container(
                  width: 50,
                  height: 3,
                  decoration: Styles.boxDecorationRoundedShadow.copyWith(
                    color: Cr.black,
                  ),
                ),
              ),
              Di.SBH40,
              const Text(
                Str.where_are_you_going,
                style: TextStyle(
                  fontSize: Di.FSEL + 2,
                  fontWeight: FontWeight.bold,
                  color: Cr.blackTextColor,
                ),
              ),
              Di.SBHS,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: Di.PSES),
                child: Card(
                  child: SimpleCustomTextField(
                    prefixIcon: SizedBox(
                      width: 30,
                      height: 30,
                      child: Icon(
                        Icons.search,
                        color: Cr.colorPrimary,
                        // size: 39,
                      ),
                    ),
                    hintText: Str.search_destination,
                  ),
                ),
              ),
              Di.SBHD,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ImageTextButon(
                    imgSrc: Img.home,
                    text: Str.home,
                  ),
                  ImageTextButon(
                    imgSrc: Img.parcel,
                    text: Str.parcel,
                  ),
                ],
              ),
              Di.SBHD,
              const ImageTextButon(
                imgSrc: Img.work,
                text: Str.work,
              ),
              Di.SBHD,
              ImageTextButon(
                img: Container(
                  decoration: Styles.boxDecorationRoundedShadow,
                  child: const Icon(
                    Icons.location_on,
                    color: Cr.grey60,
                    size: 30,
                  ),
                ),
                text: Str.set_on_map,
              ),
              Di.SBHS,
            ],
          ),
        );
      },
    );
  }
}
