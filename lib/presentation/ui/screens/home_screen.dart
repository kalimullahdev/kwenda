import 'package:flutter/material.dart';
import 'package:kwenda/presentation/ui/base/custom_text_field.dart';
import 'package:kwenda/presentation/ui/screens/google_maps.dart';
import 'package:kwenda/presentation/ui/screens/home_bottom_sheet.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          GoogleMapsScreen(),
          HomeDraggableScrollableSheet(),
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
      minChildSize: .2,
      maxChildSize: .95,
      builder: (context, scrollController) {
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
