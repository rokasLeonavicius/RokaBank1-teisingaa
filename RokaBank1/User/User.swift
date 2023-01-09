//
//  ViewController.swift
//  RokaBank1
//
//  Created by Rokas Leonavicius on 2023-01-07.

import Foundation
import UIKit

class User {
    var username: String
    var password: String
    var isOnline: Bool
    var balance: Int

    init(username: String, password: String, isOnline: Bool, balance: Int) {
        self.username = username
        self.password = password
        self.isOnline = isOnline
        self.balance = balance
    }
}

class LoginRegViewController: UIViewController {
    // ...

    var users: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // Create 3 random users with a balance of 100
        let user1 = User(username: "user1", password: "password1", isOnline: false, balance: 100)
        let user2 = User(username: "user2", password: "password2", isOnline: false, balance: 100)
        let user3 = User(username: "user3", password: "password3", isOnline: false, balance: 100)
        users = [user1, user2, user3]
    }
}
