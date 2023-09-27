//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Nikita Savchik on 26/09/2023.
//

import UIKit

class ViewController: UITableViewController {
    
//    var persons = Person.getContactList()
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        setupNavBar()
    }

    private func updateUI() {
        view.backgroundColor = .white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    private func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Contact List"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contactVC = ContactDetailsController()
        contactVC.persons = persons[indexPath.row]
        navigationController?.pushViewController(contactVC, animated: true)
    }
}

