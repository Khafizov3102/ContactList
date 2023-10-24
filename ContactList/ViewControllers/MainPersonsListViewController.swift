//
//  MainPersonsListViewController.swift
//  ContactList
//
//  Created by Денис Хафизов on 24.10.2023.
//

import UIKit

final class MainPersonsListViewController: UITableViewController {
    
    var personsList: [Person]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfotmationVC = segue.destination as? PersonInformationViewController else { return }
        personInfotmationVC.personInfo = sender as? Person
    }
}

// MARK: - Table view data source

extension MainPersonsListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonsList", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = personsList[indexPath.row].fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}

// MARK: - Table view delegate

extension MainPersonsListViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personsList[indexPath.row]
        performSegue(withIdentifier: "PersonInformationSegue", sender: person)
    }
}
