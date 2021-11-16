//
//  ContactsFirstPageViewController.swift
//  Contacts
//
//  Created by Дэлина Дворжецкая on 10.11.2021.
//

import UIKit

class ContactsFirstPageViewController: UITableViewController {
    
    var persons = [Person]()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }

    
  // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let personDetailsVC = segue.destination as? DetailsViewController else { return }
            personDetailsVC.person = persons[indexPath.row]
        }
    }
    

}
