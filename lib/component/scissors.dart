import 'package:flame/components.dart';
import 'package:rock_paper_scissors_game/constant/globals.dart';
import 'package:rock_paper_scissors_game/game/rps_game.dart';

class ScissorsComponent extends SpriteComponent with HasGameRef<RPSGame> {
  final double _spriteHeight = 200;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    sprite = await gameRef.loadSprite(Globals.);
    position = gameRef.size / 2;
    width = _spriteHeight * 1.42;
    height = _spriteHeight;
    anchor = Anchor.center;
  }
}