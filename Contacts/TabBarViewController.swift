//
//  TabBarViewController.swift
//  Contacts
//
//  Created by Дэлина Дворжецкая on 15.11.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactsFirstPageViewController else { return }
        guard let sectionViewController = viewControllers?.last as? ContactsSecondPageController else { return }
        
        let persons = Person.getPersonsContacts()
        contactListVC.persons = persons
        sectionViewController.persons = persons
    }

}
