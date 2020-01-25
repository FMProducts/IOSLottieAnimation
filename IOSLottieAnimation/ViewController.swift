//
//  ViewController.swift
//  IOSLottieAnimation
//
//  Created by ideal on 1/25/20.
//  Copyright © 2020 fmproduct.lottie.animation. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    let animationView = AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let animation = Animation.named("animation")
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.frame.size = CGSize(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 2)
        animationView.center = self.view.center
        self.view.addSubview(animationView)
    }

    
    override func viewDidAppear(_ animated: Bool) {
        self.animationView.play(fromProgress: 0,
                           toProgress: 1,
                           loopMode: LottieLoopMode.loop,
                           completion: { (finished) in
                            if finished {
                              print("Animation Complete")
                            } else {
                              print("Animation cancelled")
                            }
                        })
    }

}

