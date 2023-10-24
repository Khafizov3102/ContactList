//
//  FirstViewController.swift
//  ContactList
//
//  Created by Денис Хафизов on 25.10.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    private var personsList: [Person] = []
    private let dataStore = DataStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generatePerson()
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let navigationVC = $0 as? UINavigationController {
                if let mainPersonsListVC = navigationVC.topViewController as? MainPersonsListViewController {
                    mainPersonsListVC.personsList = personsList
                } else if let secondPersonsListVC = navigationVC.topViewController as? SecondListViewController {
                    secondPersonsListVC.personsList = personsList
                }
            }
        }
    }
    
    private func generatePerson() {
        let nameList = dataStore.nameList.shuffled()
        let surnameList = dataStore.surnameList.shuffled()
        let emailList = dataStore.emailList.shuffled()
        let phoneList = dataStore.phoneNumberList.shuffled()
        
        for counter in 0..<nameList.count {
            personsList.append(Person(
                name: nameList[counter],
                surname: surnameList[counter],
                email: emailList[counter],
                phoneNumber: phoneList[counter])
            )
        }
    }
}
