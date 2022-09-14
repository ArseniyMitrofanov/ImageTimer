//
//  SecondVC.swift
//  imageTimer
//
//  Created by Арсений on 12.09.22.
//

import UIKit

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var popug: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        popug.frame.origin.y -= 500
        popug.animationImages = ([UIImage(named: "s1")!,
                                              UIImage(named: "s2")!,
                                              UIImage(named: "s3")!,
                                              UIImage(named: "s4")!,
                                              UIImage(named: "s5")!,
                                              UIImage(named: "s6")!,
                                              UIImage(named: "s7")!,
                                              UIImage(named: "s8")!,
                                              UIImage(named: "s9")!])
        popug.animationDuration = 1
        popug.animationRepeatCount = 0
        popug.startAnimating()
        UIView.animate(withDuration: 2){
            self.popug.frame.origin.y += 500
        }
       
    }
 

}
