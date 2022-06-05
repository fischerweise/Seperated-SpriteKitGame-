//
//  GameOverScene.swift
//  Separate
//
//  Created by Mustafa Pekdemir on 5.06.2022.
//


import SpriteKit

class GameOverScene: SKScene {
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
       
    override init(size: CGSize) {
        super.init(size: size)
        self.backgroundColor = SKColor.black
        let message = "GAME OVER"
        let label = SKLabelNode(fontNamed: "Optima-ExtraBlack")
        label.text = message
        label.fontColor = SKColor.cyan
        label.fontSize = 75
        label.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        addChild(label)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let transition = SKTransition.fade(withDuration: 0.5)
        let gameScene = GameScene(size: self.size)
        self.view?.presentScene(gameScene, transition: transition)
    }
}
