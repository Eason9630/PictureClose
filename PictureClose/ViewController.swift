//
//  ViewController.swift
//  PictureClose
//
//  Created by 林祔利 on 2023/3/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var 達爾特: UIImageView!
    @IBOutlet weak var 悟空: UIImageView!
    @IBOutlet weak var 達爾: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    @IBAction func fussion(_ sender: UISlider) {
        let speed = sender.value
        
        悟空.frame.origin.x  = CGFloat(85 + speed)
        達爾.frame.origin.x = CGFloat(526 - speed)
        if(speed == 120){
            悟空.alpha = CGFloat(0)
            達爾.alpha = CGFloat(0)
            達爾特.alpha = CGFloat(1)
        }else{
            悟空.alpha = CGFloat(1)
            達爾.alpha = CGFloat(1)
            達爾特.alpha = CGFloat(0)
        }

        
    }
}

