//
//  ContactsFirstPageViewController.swift
//  Contacts
//
//  Created by Дэлина Дворжецкая on 10.11.2021.
//

import UIKit

class ContactsFirstPageViewController: UITableViewController {
    
    let personsList = Person.getPersonsContacts()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(personsList)

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        let person = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.firstName + " " + person.lastName
        
        cell.contentConfiguration = content

        return cell
    }

    
  // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personsList[indexPath.row]
        personDetailsVC.person = person
    }
    

}
