//
//  FirstViewController.swift
//  ContactList
//
//  Created by Денис Хафизов on 25.10.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private var personsList: [Person] = []
    private let dataStore = DataStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        generatePerson()
    }
    
    private func generatePerson() {
        let nameList = dataStore.nameList.shuffled()
        let surnameList = dataStore.surnameList.shuffled()
        let emailList = dataStore.emailList.shuffled()
        let phoneList = dataStore.phoneNumberList.shuffled()
        
        for i in 0..<nameList.count {
            personsList.append(Person(name: nameList[i], surname: surnameList[i], email: emailList[i], phoneNumber: phoneList[i]))
        }
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
