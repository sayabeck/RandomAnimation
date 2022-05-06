//
//  AnimationDataManager.swift
//  RandomAnimation
//
//  Created by mac mini on 5/6/22.
//

import Spring

struct AnimationDataManager {
    
    let names = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    static let animations = AnimationDataManager()
}
