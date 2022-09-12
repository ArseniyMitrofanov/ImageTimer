//
//  ViewController.swift
//  imageTimer
//
//  Created by Арсений on 7.09.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewA: UIImageView!
    
    @IBOutlet weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let image = UIImage(named: "Слой 1")!
//        imageViewA.image = image
//        //
//        imageViewA.animationImages = ([UIImage(named: "Слой 1")!,
//                                       UIImage(named: "Слой 2")!,
//                                       UIImage(named: "Слой 3")!,
//                                       UIImage(named: "Слой 4")!,
//                                       UIImage(named: "Слой 5")!,
//                                       UIImage(named: "Слой 6")!,
//                                       UIImage(named: "Слой 7")!,
//                                       UIImage(named: "Слой 8")!,
//                                       UIImage(named: "Слой 9")!])
//        imageViewA.animationDuration = 1
//        imageViewA.animationRepeatCount = 0
//        imageViewA.startAnimating()
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        
        
    }
    var state = "lu"
    var counter = 0
    
    @objc func timerFunc(){
        switch state{
        case "lu":
            state = "ld"
            UIView.animate(withDuration: 1){
                self.imageViewA.frame.origin.y += 650
                self.counter += 1
                self.countLabel.text = String(self.counter)
            }
        case "ld":
            state = "rd"
            UIView.animate(withDuration: 0.5){
                self.imageViewA.frame.origin.x += 250
                self.counter += 1
                self.countLabel.text = String(self.counter)
            }
        case "rd":
            state = "ru"
            UIView.animate(withDuration: 1){
                self.imageViewA.frame.origin.y -= 650
                self.counter += 1
                self.countLabel.text = String(self.counter)
            }
        default:
            state = "lu"
            UIView.animate(withDuration: 0.5){
                self.imageViewA.frame.origin.x -= 250
                self.counter += 1
                self.countLabel.text = String(self.counter)
            }
        }
        
        
    }
    //
}


