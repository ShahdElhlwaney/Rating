import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rating_app/Core/Utils/app_router.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/skip_button.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/welcome_rating_section.dart';
import '../../../../../Core/Utils/colors.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../../Core/Widgets/button.dart';
import 'change_state_section.dart';
import 'custom_emoji.dart';


class EmojiViewBody extends StatefulWidget {
   EmojiViewBody({Key? key}) : super(key: key);

  @override
  State<EmojiViewBody> createState() => _EmojiViewBodyState();
}

class _EmojiViewBodyState extends State<EmojiViewBody>with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
  }

  List<bool> activeEmoji=[false,false,false,false,];
Color colorButton=ColorsApp.mainColor;
bool isActive=false;
  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }
  @override

  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            WelcomeRatingSection(),
            SizedBox(height: 29,),
            const Text('How you doing today?',style: Styles.textStyle16,),
            const SizedBox(height: 16,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  CustomEmoji(onTap: () {
                    getChangeState(0);
                  }, emoji: '😫', colorEmoji:activeEmoji[0]?ColorsApp.activeEmojiColor
                      : ColorsApp.inActiveEmojiColor,),
                  CustomEmoji(onTap: () {
                    getChangeState(1);
                  }, emoji: '🙁', colorEmoji: activeEmoji[1]?ColorsApp.activeEmojiColor
                      : ColorsApp.inActiveEmojiColor,),
                  CustomEmoji(onTap: () {
                    getChangeState(2);
                  }, emoji: '🙂', colorEmoji: activeEmoji[2]?ColorsApp.activeEmojiColor
                      : ColorsApp.inActiveEmojiColor,),
                  CustomEmoji(onTap: () {
                    getChangeState(3);
                  }, emoji: '😍', colorEmoji: activeEmoji[3]?ColorsApp.activeEmojiColor
                      : ColorsApp.inActiveEmojiColor,),
                ]
            ),
            const SizedBox(height: 32,),

            AnimatedBuilder(
              animation: slidingAnimation,
              builder: (BuildContext context, Widget? child) {
                return SlideTransition(
                  position: slidingAnimation,
                  child: Button(text: 'Send', onPressed: () {
                    GoRouter.of(context).push(AppRouter.kCheckSatisfiedView);
                  },color:isActive?ColorsApp.mainColor:ColorsApp.notActiveMainColor ,),
                );
              },

            ),
            const SizedBox(height: 30,),
            SkipButton(),


          ],
        )
    );

  }

  getChangeState(int index)
  {
    isActive=true;
    for(int i=0;i<4;i++)
      {
        if(i==index)
          {
            activeEmoji[index]=true;

          }
        else
          {
            activeEmoji[i]=false;


          }
      }
    setState(() {

    });
  }
  void initSlidingAnimation() {
    animationController= AnimationController(
      vsync: this
      ,duration: const Duration(seconds: 1),
    );
    slidingAnimation=Tween<Offset>(begin:Offset.zero,end:const Offset(0,.3)
    ).animate(animationController);
    animationController.forward();
  }

}




