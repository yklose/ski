//
//  MissedNode.swift
//  Ski
//
//  Created by Ralf Tappmeyer on 6/6/16.
//  Copyright © 2016 Ralf Tappmeyer. All rights reserved.
//
//  Abstract: The MissedNode provides a shape/physicsBody to detect whether the player has missed a gate.

import SpriteKit

class MissedNode: SKShapeNode {
    // MARK: Initialization
    
    init(offset: CGPoint) {
        super.init()

        name = "missedNode"
        position = CGPointZero
        
        let missedPhysicsBody = SKPhysicsBody(edgeFromPoint: offset, toPoint: CGPoint(x: (offset.x + 256), y: offset.y))
        missedPhysicsBody.categoryBitMask = ColliderType.Missed.rawValue
        missedPhysicsBody.contactTestBitMask = ColliderType.Player.rawValue
        missedPhysicsBody.collisionBitMask = ColliderType.None.rawValue
        missedPhysicsBody.dynamic = true

        physicsBody = missedPhysicsBody
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
