//
//  Object.swift
//  AR Touch
//
//  Created by Michel Kansou on 05/10/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import Foundation
import SceneKit

class Object {
    
    class func getObjectForName(objectName: String) -> SCNNode {
        switch objectName {
        case "ikea":
            return Object.getIkeaCouch()
        default:
            return Object.getIkeaCouch()
        }
    }
    
    class func getIkeaCouch() -> SCNNode {
        let obj = SCNScene(named: "art.scnassets/ikea.dae")
        let node = obj?.rootNode.childNode(withName: "ikea", recursively: true)!
        node?.scale = SCNVector3Make(1, 1, 1)
        node?.position = SCNVector3Make(-1, -1, -1)
        return node!
    }
    
    class func startRotation(node: SCNNode) {
        let rotate = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(0.01 * Double.pi), z: 0, duration: 0.1))
        
        node.runAction(rotate)
    }
}
