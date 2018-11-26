//
//  SkillsViewController.swift
//  PersonalResume
//
//  Created by Marcus Gullstrand on 2018-11-26.
//  Copyright © 2018 Marcus Gullstrand. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

    let delay = 4
    
    @IBOutlet weak var redCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redCircle.layer.cornerRadius = self.redCircle.frame.width / 2
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let animateView1 = UIView(frame: CGRect(x: self.redCircle.frame.origin.x, y: self.redCircle.frame.origin.y, width: 150, height: 150))
        animateView1.center = self.redCircle.center
        animateView1.backgroundColor = UIColor(named: "Cool red")
        animateView1.layer.cornerRadius = self.redCircle.frame.width / 2
        
        let animateView2 = UIView(frame: CGRect(x: self.redCircle.frame.origin.x, y: self.redCircle.frame.origin.y, width: self.redCircle.frame.width, height: self.redCircle.frame.height))
        animateView2.center = self.redCircle.center
        animateView2.backgroundColor = UIColor(named: "Cool red")
        animateView2.layer.cornerRadius = self.redCircle.frame.width / 2
        
        view.addSubview(animateView1)
        view.addSubview(animateView2)
        self.redCircle.removeFromSuperview()
        
        UIView.animate(withDuration: 4) {
            animateView1.frame.size = CGSize(width: animateView1.frame.width - 70, height: animateView1.frame.width - 70)
            animateView1.center = CGPoint(x: self.redCircle.center.x, y: self.redCircle.center.y + 300)
            animateView1.layer.cornerRadius = animateView1.frame.width / 2
            animateView1.backgroundColor = UIColor.green
        }
        
        UIView.animate(withDuration: 4) {
            animateView2.frame.size = CGSize(width: animateView2.frame.width - animateView2.frame.width, height: animateView2.frame.height - animateView2.frame.height)
            animateView2.center = CGPoint(x: self.redCircle.center.x, y: animateView2.center.y)
            animateView2.layer.cornerRadius = animateView2.frame.width / 2
            animateView2.backgroundColor = UIColor.black
        }
        
    }
    

}
