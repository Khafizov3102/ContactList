//
//  PersonInformationViewController.swift
//  ContactList
//
//  Created by Денис Хафизов on 24.10.2023.
//

import UIKit

final class PersonInformationViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = personInfo.fullName
        
        phoneNumberLabel.text = "Phone: \(personInfo.phoneNumber)"
        emailLabel.text = "Email: \(personInfo.email)"
    }
}
