
import Foundation
import UIKit
import SpriteKit

public class GameViewController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        let scene = GameScene(size: view.bounds.size)
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
    }
    
    public override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
