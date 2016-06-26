//
//  RenderComponent.swift
//  Ski
//
//  Created by Ralf Tappmeyer on 6/5/16.
//  Copyright © 2016 Ralf Tappmeyer. All rights reserved.
//

import SpriteKit
import GameplayKit

class RenderComponent: GKComponent {
    // MARK: Properties
    
    // The RenderComponents provides a node allowing an entity to be rendered in a scene.
    let node = EntityNode()
    
    init(entity: GKEntity) {
        node.entity = entity
    }
}