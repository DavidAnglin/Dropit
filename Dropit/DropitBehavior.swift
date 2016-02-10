//
//  DropitBehavior.swift
//  Dropit
//
//  Created by David Anglin on 2/10/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

import UIKit

class DropitBehavior: UIDynamicBehavior
{
    let gravity = UIGravityBehavior()
    
    lazy var collider: UICollisionBehavior = {
        let lazilyCreatedCollider = UICollisionBehavior()
        lazilyCreatedCollider.translatesReferenceBoundsIntoBoundary = true
        return lazilyCreatedCollider
    }()
    
    override init() {
        super.init()
        addChildBehavior(gravity)
        addChildBehavior(collider)
    }
    
    func addDrop(drop: UIView) {
        dynamicAnimator?.referenceView?.addSubview(drop)
        gravity.addItem(drop)
        collider.addItem(drop)
    }
    
    func removeDrop(drop:UIView) {
        gravity.removeItem(drop)
        collider.removeItem(drop)
        drop.removeFromSuperview()
    }
    

}
