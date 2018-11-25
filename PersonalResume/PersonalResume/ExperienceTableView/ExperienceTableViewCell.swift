//
//  ExperienceTableViewCell.swift
//  PersonalResume
//
//  Created by Marcus Gullstrand on 2018-11-25.
//  Copyright © 2018 Marcus Gullstrand. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell {

    @IBOutlet weak var experienceImageView: UIImageView!
    @IBOutlet weak var experienceTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
