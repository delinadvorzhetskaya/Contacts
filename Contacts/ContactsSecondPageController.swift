//
//  ContactsSecondPageController.swift
//  Contacts
//
//  Created by Дэлина Дворжецкая on 10.11.2021.
//

import UIKit

class ContactsSecondPageController: UITableViewController {
    
    let personsList = Person.getPersonsContacts()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        8
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
            case 0:
            content.text = personsList[indexPath.section].number
            case 1:
            content.text = personsList[indexPath.section].mail
            default:
                break
            }
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(
        _ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].firstName + " " + personsList[section].lastName
    }
}
