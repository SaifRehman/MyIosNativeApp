//
//  ViewController.swift
//  myApp
//
//  Created by SaifRehman on 1/11/17.
//  Copyright © 2017 SaifRehman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var BackGroundBlur: UIImageView!
    
    @IBOutlet weak var roundedButton: UIButton!
    @IBOutlet weak var roundedButton2: UIButton!
    @IBOutlet weak var textArea1: UITextField!
    @IBOutlet weak var textArea2: UITextField!
    @IBAction func LoginButton(_ sender: UIButton) {
        // for login navigation
        if(true)
        {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let resultViewController = storyBoard.instantiateViewController(withIdentifier: "StoryBoardID") as! UITabBarController
            self.present(resultViewController, animated:true, completion:nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedButton.center.x = self.view.frame.width+10
        roundedButton2.center.x = self.view.frame.width+10
        //textArea1.center.x = self.view.frame.width+10
        //textArea2.center.x = self.view.frame.width+10
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 5.0, initialSpringVelocity: 5.0, options: [], animations: ({
            self.roundedButton.center.x = self.view.frame.width / 2
            self.roundedButton2.center.x = self.view.frame.width/2
          //  self.textArea1.center.x = self.view.frame.width/2
           // self.textArea2.center.x = self.view.frame.width/2
        }), completion: nil)

        //styling adding blue and colors to appx
        navigationController?.setNavigationBarHidden(navigationController?.isNavigationBarHidden == false, animated: true)
        let blurEffect = UIBlurEffect(style:UIBlurEffectStyle.dark)
        let blurView = UIVisualEffectView(effect:blurEffect)
        blurView.frame = BackGroundBlur.bounds
        BackGroundBlur.addSubview(blurView)
        blurView.alpha = 0.3
        UIView.animate(withDuration: 0.8) {
            blurView.alpha = 1.0
        }
        roundedButton.backgroundColor = .clear
        roundedButton.layer.cornerRadius = 10
        roundedButton.layer.borderWidth = 1
        roundedButton.layer.borderColor = UIColor.orange.cgColor
        roundedButton2.backgroundColor = .clear
        roundedButton2.layer.cornerRadius = 10
        roundedButton2.layer.borderWidth = 1
        roundedButton2.layer.borderColor = UIColor.red.cgColor
        textArea1.backgroundColor = .black
        textArea1.layer.cornerRadius = 5
        textArea1.layer.borderWidth = 1
        textArea1.layer.borderColor = UIColor.orange.cgColor
        textArea2.backgroundColor = .black
        textArea2.layer.cornerRadius = 5
        textArea2.layer.borderWidth = 1
        textArea2.layer.borderColor = UIColor.orange.cgColor

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}

