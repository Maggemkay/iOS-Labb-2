//
//  DetailsViewController.swift
//  PersonalResume
//
//  Created by Marcus Gullstrand on 2018-11-25.
//  Copyright © 2018 Marcus Gullstrand. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var detailsImage: UIImageView!
    @IBOutlet weak var detailsPeriod: UILabel!
    @IBOutlet weak var detailsDescription: UILabel!
    @IBOutlet weak var detailsBarHeader: UINavigationItem!
    
    var experience: Experience = Experience(imageName: "", title: "", period: "", description: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailsImage.image = UIImage(named: experience.imageName)
        detailsPeriod.text = experience.period
        detailsDescription.text = experience.description
        detailsBarHeader.title = experience.title        
    }
    

}
