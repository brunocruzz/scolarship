
import Foundation
import SpriteKit



public class GameScene: SKScene {
    
    // 1
    public let player = SKSpriteNode(imageNamed: "botao.png")
    
   public override func didMove(to view: SKView) {
        // 2
        backgroundColor = SKColor.white
        // 3
        player.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
        // 4
        
        addChild(player)
        
    }
}
