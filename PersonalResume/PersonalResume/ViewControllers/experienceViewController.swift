//
//  experienceViewController.swift
//  PersonalResume
//
//  Created by Marcus Gullstrand on 2018-11-17.
//  Copyright © 2018 Marcus Gullstrand. All rights reserved.
//

import UIKit

class experienceViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var sections: [String] = ["Work", "Education"]
    var cells: [[Experience]] = [
        [
            Experience(imageName: "Work", title: "Claes Ohlsson", period: "2010-2012", description: "I wooked hard and did sweat a lot."),
            Experience(imageName: "Work", title: "UberNice AB", period: "1807-1956", description: "Dis was da best wooork evvaaarrr!")
        ],
        [
            Experience(imageName: "Knowledge", title: "Basår", period: "2015-2016", description: "I did basår to get gooder at brain tasks."),
            Experience(imageName: "Knowledge", title: "Computer Engineer", period: "2016-1019", description: "Trust me, i am an engineer.")
        ]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailsViewController {
            if let indexPath = sender as? IndexPath {
                let detailedExperience = cells[indexPath.section][indexPath.row]
                destination.experience = detailedExperience
            }
        }
    }
}

extension experienceViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 30))
        headerView.backgroundColor = UIColor.blue
        
        let headers = UILabel(frame: CGRect(x: 8, y: 0, width: headerView.frame.width - 16, height: 30))
        headers.text = sections[section]
        headers.textColor = UIColor.white
        headers.font = UIFont.boldSystemFont(ofSize: 14)
        headers.textAlignment = .center
        headerView.addSubview(headers)
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ExperienceTableViewCell {
            let experience = cells[indexPath.section][indexPath.row]
            cell.experienceTitle.text = experience.title
            cell.experienceImageView.image = UIImage(named: experience.imageName)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailsSegue", sender: indexPath)
    }
    
}
