//
//  ViewController.swift
//  RandomAnimation
//
//  Created by mac mini on 5/6/22.
//

import Spring

class AnimationViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    var animation = Animation.getAnimationType()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animationDescription()
        
    }

    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animationDescription()
        
        animation = Animation.getAnimationType()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    private func animationDescription () {
        
        presetLabel.text = "preset: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(String(format: "%.02f", animation.force))"
        durationLabel.text = "duration: \(String(format: "%.02f", animation.duration))"
        delayLabel.text = "delay: \(String(format: "%.02f", animation.delay))"
    }
    
}

