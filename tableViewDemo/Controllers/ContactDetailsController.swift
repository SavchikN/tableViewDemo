//
//  ContactDetailsController.swift
//  tableViewDemo
//
//  Created by Nikita Savchik on 26/09/2023.
//

import UIKit

class ContactDetailsController: UIViewController {
    
    var persons: Person!
    
    private lazy var phone: UILabel = {
        let phone = UILabel()
        phone.text = "Phone number: \(persons.phoneNumber)"
        phone.textAlignment = .center
        phone.font = .systemFont(ofSize: 20)
        phone.translatesAutoresizingMaskIntoConstraints = false
        return phone
    }()
    
    private lazy var email: UILabel = {
        let email = UILabel()
        email.text = "E-mail: \(persons.email)"
        email.textAlignment = .center
        email.font = .systemFont(ofSize: 20)
        email.translatesAutoresizingMaskIntoConstraints = false
        return email
    }()
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: persons.image)
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        setConstraints()
    }
    
    private func updateUI() {
        view.backgroundColor = .white
        title = persons.fullName
        setupSubviews(phone)
        setupSubviews(email)
        setupSubviews(image)
    }
    
    private func setupSubviews(_ subview: UIView...) {
        subview.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            image.heightAnchor.constraint(equalToConstant: 350),
            image.widthAnchor.constraint(equalToConstant: 300),
            
            phone.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20),
            phone.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            phone.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            email.topAnchor.constraint(equalTo: phone.bottomAnchor, constant: 5),
            email.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            email.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
}
