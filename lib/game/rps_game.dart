import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:rock_paper_scissors_game/component/background.dart';
import 'package:rock_paper_scissors_game/component/rock_container.dart';

class RPSGame extends FlameGame with HasCollisionDetection, TapCallbacks {


  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // Add background.
    add(BackgroundComponent());
    add(RockContainer(size/2));






  }

  @override
  void onTapUp(TapUpEvent event) {
    super.onTapUp(event);
  }






}