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
        popug.animationImages = ([UIImage(named: "Слой 1")!,
                                              UIImage(named: "Слой 2")!,
                                              UIImage(named: "Слой 3")!,
                                              UIImage(named: "Слой 4")!,
                                              UIImage(named: "Слой 5")!,
                                              UIImage(named: "Слой 6")!,
                                              UIImage(named: "Слой 7")!,
                                              UIImage(named: "Слой 8")!,
                                              UIImage(named: "Слой 9")!])
        popug.animationDuration = 1
        popug.animationRepeatCount = 0
        popug.startAnimating()
        UIView.animate(withDuration: 2){
            self.popug.frame.origin.y += 500
        }
       
    }
 

}
