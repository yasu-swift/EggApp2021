//
//  ViewController.swift
//  EggApp
//
//  Created by 高橋康之 on 2021/10/30.
//

import UIKit


class ViewController: UIViewController {
    var count: Int = 100
    let imageNameArray = ["egg01","egg02","egg03"]
    var dispImageNo = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = String(count)
    }
    
    
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    @IBAction func button(_ sender: Any) {
        
        if count > 0 {
            count -= 5
            countLabel.text = String(count)
        }
        if count == 30 {
            dispImageNo += 1
        } else if count == 0 {
            dispImageNo += 1
        }
        switch count {
        case 75: textLabel.text = "がんばれ"
        case 50: textLabel.text = "まだまだ"
        case 25: textLabel.text = "もうちょい"
        case 0: textLabel.text = "おめでとう"
            
        default:
            break
        }
        displayImage()
    }
    
    
    func displayImage() {
        let name = imageNameArray[dispImageNo]
        let image = UIImage(named: name)
        imageView.image = image
    }
    
}

