//
//  DetailsViewController.swift
//  Contacts
//
//  Created by Дэлина Дворжецкая on 10.11.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        
        phoneLabel.text = "Phone: \(person.number)"
        emailLabel.text = "Email: \(person.mail)r"
    }
}
