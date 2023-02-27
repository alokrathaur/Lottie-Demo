//
//  ViewController.swift
//  lottie-demo1
//
//  Created by Alok Rathaur on 27/02/23.
//

import UIKit
import Lottie



class ViewController: UIViewController {

    private var lottieAnimation: LottieAnimationView?
    private var backLottieAnimation: LottieAnimationView?
    
//    @IBOutlet weak var anim2View: LottieAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. Set animation content mode
        self.title = "Cart"
//        animationView.contentMode = .scaleAspectFit
//
//        // 2. Set animation loop mode
//
//        animationView.loopMode = .loop
//
//        // 3. Adjust animation speed
//
//        animationView.animationSpeed = 0.5
//
//        // 4. Play animation
//        animationView.play()
        
        // background Lottie Animation
         
        self.backLottieAnimation = LottieAnimationView(name: "CouponApplied")
        self.backLottieAnimation?.frame = self.view.bounds
        self.backLottieAnimation?.contentMode = .scaleToFill
        self.backLottieAnimation?.center = self.view.center
        self.backLottieAnimation?.loopMode = .playOnce
        self.view.addSubview(self.backLottieAnimation!)
        
//        self.anim2View = LottieAnimationView(name: "Anim2")
        
        playAnimation()
         
         
        // Top Lottie Animation
         
        self.lottieAnimation = LottieAnimationView(name: "yousaved")
        self.lottieAnimation?.frame = view.bounds
        self.lottieAnimation?.contentMode = .scaleAspectFill
        self.lottieAnimation?.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 60)
//        self.lottieAnimation?.center = self.view.center
        self.view.addSubview(self.lottieAnimation!)
        self.lottieAnimation?.loopMode = .loop
        self.lottieAnimation?.play()
        
        // Do any additional setup after loading the view.
    }
    
    func playAnimation() {
        self.backLottieAnimation?.play(completion: { played in
            if played == true {
                print("Navigate here")
            }else {
                self.playAnimation()
            }
        })
    }


}

