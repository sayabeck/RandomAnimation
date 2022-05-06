//
//  Animation.swift
//  RandomAnimation
//
//  Created by mac mini on 5/6/22.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    static func getAnimationType() -> Animation {
        
        Animation(
            preset: AnimationDataManager.animations.names.randomElement()?.rawValue ?? "flash",
            curve: AnimationDataManager.animations.curves.randomElement()?.rawValue ?? "spring",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...2),
            delay: Float.random(in: 0.2...0.5))
    
    }
}
