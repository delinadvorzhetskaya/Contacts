//
//  PersonModel.swift
//  Contacts
//
//  Created by Дэлина Дворжецкая on 10.11.2021.
//

import Foundation

struct Person {
     
    let firstName: String
    let lastName: String
    let mail: String
    let number: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}



extension Person {
    static func getPersonsContacts() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.firstNames.shuffled()
        let surnames = DataManager.shared.lastNames.shuffled()
        let emails = DataManager.shared.mails.shuffled()
        let phones = DataManager.shared.numbersOfPhones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0...iterationCount - 1 {
            let person = Person(firstName: names[index], lastName: surnames[index], mail: emails[index], number: phones[index])
            
            persons.append(person)
        }
        
        return persons
    }
}
