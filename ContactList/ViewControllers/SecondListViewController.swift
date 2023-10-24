//
//  SecondListViewController.swift
//  ContactList
//
//  Created by Денис Хафизов on 25.10.2023.
//

import UIKit

class SecondListViewController: UITableViewController {
    
    var personsList: [Person]!
}

// MARK: - Table view data source

extension SecondListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
}

// MARK: - Table view delegate

extension SecondListViewController {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonsList", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = personsList[indexPath.section].phoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = personsList[indexPath.section].email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].fullName
    }
}
