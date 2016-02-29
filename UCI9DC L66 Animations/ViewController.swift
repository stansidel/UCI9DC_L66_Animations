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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateImage(sender: AnyObject) {
        imageNumber += 1
        if imageNumber > 5 {
            imageNumber = 1
        }
        alienImageView.image = UIImage(named: "frame\(imageNumber).png")
    }

}

