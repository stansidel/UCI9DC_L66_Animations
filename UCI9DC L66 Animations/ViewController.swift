//
//  ViewController.swift
//  UCI9DC L66 Animations
//
//  Created by Stanislav Sidelnikov on 29/02/16.
//  Copyright © 2016 Stanislav Sidelnikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var alienImageView: UIImageView!
    var imageNumber = 1
    var timer = NSTimer()
    @IBOutlet weak var toggleAnimationButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        toggleAnimation(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func doAnimation() {
        imageNumber += 1
        if imageNumber > 5 {
            imageNumber = 1
        }
        alienImageView.image = UIImage(named: "frame\(imageNumber).png")
    }

    @IBAction func toggleAnimation(sender: AnyObject) {
        if timer.valid {
            timer.invalidate()
            toggleAnimationButton.setTitle("Start Animation", forState: .Normal)
        } else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            toggleAnimationButton.setTitle("Stop Animation", forState: .Normal)
        }
    }

//    override func viewDidLayoutSubviews() {
//        alienImageView.frame = CGRect(x: 100, y: 20, width: 0, height: 0)
//    }
//
//    override func viewDidAppear(animated: Bool) {
//        UIView.animateWithDuration(1.0) { () -> Void in
//            self.alienImageView.frame = CGRect(x: 100, y: 20, width: 100, height: 200)
//        }
//    }


}

