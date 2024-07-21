part of 'home_imports.dart';

@RoutePage()
class HomeDetails extends StatefulWidget {
  const HomeDetails({super.key});

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Netflix will charge money for password sharing"
            .text
            .ellipsis
            .make(),
      ),
      body: ListView(
        children: [
          Image.asset(
            MyAssets.netflix,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                10.h.heightBox,
                "Netflix will charge money for password sharing"
                    .text
                    .bold
                    .xl2
                    .make(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(FeatherIcons.eye),
                    8.h.widthBox,
                    "147 Views"
                        .text
                        .make(),
                    const Spacer(),
                    IconButton(
                        onPressed: (){
                        },
                        icon: const Icon(FeatherIcons.thumbsUp,color: Colors.green,)),
                    "0".text.make(),
                    IconButton(
                        onPressed: (){
                        },
                        icon: const Icon(FeatherIcons.thumbsDown,color: Colors.red,)),
                    "0".text.make(),
                  ],
                ),
                "AMC and Netflix have inked a deal to bring several series from the cable network to the streaming platform later this summer. Variety reports that the agreement includes seasons 1-8 of Fear the Walking Dead, season 1 of The Walking Dead: Daryl Dixon, seasons 1-4 of Preacher, seasons 1-3 of A Discovery of Witches, seasons 1-3 of Into the Badlands, seasons 1-2 of Kevin can F*** Himself, seasons 1-2 of Dark Winds, seasons 1-2 of Gangs of London, season 1 of Anne Rice’s Interview With the Vampire, season 1 of Anne Rice’s Mayfair Witches, season 1 of Monsieur Spade, season 1 of That Dirty Black Bag and season 1 of The Terror. All of them will join Netflix on August 19 and will be available for one year. The first seasons of both The Walking Dead: Dead City and The Walking Dead: The Ones Who Live will land on Netflix on January 13.".text.make(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

