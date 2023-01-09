//
//  ViewController.swift
//  RokaBank1
//
//  Created by Rokas Leonavicius on 2023-01-07.

import UIKit


// pirmo screen logika

class LoginViewController: UIViewController {

    @IBOutlet weak var loginRegisterSegment: UISegmentedControl!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    var isRegistering = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        if isRegistering {
            // Register the user
            guard let username = usernameTextField.text, !username.isEmpty, username.count >= 8,
                  let password = passwordTextField.text, !password.isEmpty,password.count >= 8
            else {
                messageLabel.text = "Error: username and password are required"
                return
            }
            
            let newUser = User(username: username, password: password, isOnline: false, balance: 100)
//            users.append(newUser)
            
                        // Reset the form
                        usernameTextField.text = ""
                        passwordTextField.text = ""
                        messageLabel.text = "Registration successful"
                        isRegistering = false
                        loginButton.setTitle("Log In", for: .normal)
                    } else {
                        // Validate the username and password
                        guard let username = usernameTextField.text, !username.isEmpty,
                              let password = passwordTextField.text, !password.isEmpty else {
                            messageLabel.text = "Error: username and password are required"
                            return
                        }

                        // Perform the login
                        // ...

                        // Segue to the next screen
                        performSegue(withIdentifier: "loginSuccess", sender: self)
                    }
                }
            }


// ----------------------------------  Pabaiga pirmo screen

// Pradzia antro screeno userRoomViewController

class SendMoney: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var users: [User]
    var delegate: SendMoney?

    init(users: [User]) {
        self.users = users
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set up the table view
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }
}
extension SendMoney: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt {
    }
}
