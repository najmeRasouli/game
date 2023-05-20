import 'package:flame/components.dart';
import 'package:rock_paper_scissors_game/constant/globals.dart';
import 'package:rock_paper_scissors_game/game/rps_game.dart';

class BackgroundComponent extends SpriteComponent
    with HasGameRef<RPSGame> {
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    sprite = await gameRef.loadSprite(Globals.backgroundSprite);
    size = gameRef.size;
  }
}
