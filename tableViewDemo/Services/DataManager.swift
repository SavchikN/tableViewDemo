//
//  DataManager.swift
//  tableViewDemo
//
//  Created by Nikita Savchik on 26/09/2023.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names = ["Nikita", "Jhon", "Matthew", "Donald"]
    let surnames = ["Jhones", "Trump", "Stallone", "Savchik"]
    let numbers = ["123-312", "321-321", "111-222", "333-222"]
    let emails = ["respect@gmail.com", "pesblya@gmail.com", "shaitan@gmail.com", "yeba322@gmail.com"]
    let photos = ["first", "second", "third", "fourth"]
    
    private init() {}
}
