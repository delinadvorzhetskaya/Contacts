//
//  PersonModel.swift
//  Contacts
//
//  Created by Дэлина Дворжецкая on 10.11.2021.
//

import Foundation

struct Person {
    
    let dataManager = DataManager()
    
    var firstName: String
    var lastName: String
    var mail: String
    var number: String
    
//    init(firstName: String, lastName: String, mail: String, number: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.mail = mail
//        self.number = number
//    }
//    init?(firstName: String, lastName: String, mail: String, number: String) {
//
//        guard let randomFirstName = dataManager.firstNames.randomElement() else { return nil}
//        dataManager.firstNames.remove(randomFirstName)
//        self.firstName = randomFirstName
//
//        guard let randomLastName = dataManager.lastNames.randomElement() else { return nil}
//        dataManager.lastNames.remove(randomLastName)
//        self.lastName = randomLastName
//
//        guard let randomMail = dataManager.mails.randomElement() else { return nil}
//        dataManager.mails.remove(randomMail)
//        self.mail = randomMail
//
//        guard let randomNumber = dataManager.numbersOfPhones.randomElement() else { return nil}
//        dataManager.numbersOfPhones.remove(randomNumber)
//        self.number = randomNumber
//
//    }
//    init() {
//
//        let randomFirstName = dataManager.firstNames.randomElement()
//        if let firstName1 = dataManager.firstNames.remove(randomFirstName ?? "") {
//            firstName = firstName1
//        } else {firstName = ""}
//
//        let randomLastName = dataManager.lastNames.randomElement()
//        if let lastNameNew = dataManager.lastNames.remove(randomLastName ?? "") {
//            lastName = lastNameNew
//        } else {lastName = ""}
//
//        let randomMail = dataManager.mails.randomElement()
//        if let randomMailNew = dataManager.mails.remove(randomMail ?? "") {
//            mail = randomMailNew
//        } else {mail = ""}
//
//        let randomNumber = dataManager.numbersOfPhones.randomElement()
//        if let randomNumberNew = dataManager.numbersOfPhones.remove(randomNumber ?? "") {
//            number = randomNumberNew
//        } else {number = ""}
//    }
        
//        guard let randomFirstName = dataManager.firstNames.randomElement() else { return nil}
//        dataManager.firstNames.remove(randomFirstName)
//        firstName = randomFirstName
//
//        guard let randomLastName = dataManager.lastNames.randomElement() else { return nil}
//        dataManager.lastNames.remove(randomLastName)
//        lastName = randomLastName
//
//        guard let randomMail = dataManager.mails.randomElement() else { return nil}
//        dataManager.mails.remove(randomMail)
//        mail = randomMail
//
//        guard let randomNumber = dataManager.numbersOfPhones.randomElement() else { return nil}
//        dataManager.numbersOfPhones.remove(randomNumber)
//        number = randomNumber
}



extension Person {
    static func getPersonsContacts() -> [Person] {
        let dataManager = DataManager()
     
    return [
        Person(
            firstName: dataManager.firstNames[0],
            lastName: dataManager.lastNames[0],
            mail: dataManager.mails[0],
            number: dataManager.numbersOfPhones[0]),
        Person(
            firstName: dataManager.firstNames[1],
            lastName: dataManager.lastNames[1],
            mail: dataManager.mails[1],
            number: dataManager.numbersOfPhones[1]),
        Person(
            firstName: dataManager.firstNames[2],
            lastName: dataManager.lastNames[2],
            mail: dataManager.mails[2],
            number: dataManager.numbersOfPhones[2]),
        Person(
            firstName: dataManager.firstNames[3],
            lastName: dataManager.lastNames[3],
            mail: dataManager.mails[3],
            number: dataManager.numbersOfPhones[3]),
        Person(
            firstName: dataManager.firstNames[4],
            lastName: dataManager.lastNames[4],
            mail: dataManager.mails[4],
            number: dataManager.numbersOfPhones[4]),
        Person(
            firstName: dataManager.firstNames[5],
            lastName: dataManager.lastNames[5],
            mail: dataManager.mails[5],
            number: dataManager.numbersOfPhones[5]),
        Person(
            firstName: dataManager.firstNames[6],
            lastName: dataManager.lastNames[6],
            mail: dataManager.mails[6],
            number: dataManager.numbersOfPhones[6]),
        Person(
            firstName: dataManager.firstNames[7],
            lastName: dataManager.lastNames[7],
            mail: dataManager.mails[7],
            number: dataManager.numbersOfPhones[7])
    ]
    }
}


//extension Person {
//    static func getPersonsContacts() -> [Person] {
//        [
//            Person(),
//            Person(),
//            Person(),
//            Person(),
//            Person(),
//            Person(),
//            Person(),
//            Person(),
//        ]
//
//    }
//}
