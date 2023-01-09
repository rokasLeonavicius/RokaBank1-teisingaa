//
//  ViewController.swift
//  RokaBank1
//
//  Created by Rokas Leonavicius on 2023-01-07.

// pradzia antro screeno

import UIKit

class UserRoomViewController: UIViewController {
    
    @IBOutlet weak var userInfotextView: UILabel!
    var user: User!
    var balance: Int!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        userInfotextView.text = "Hello \(user.username), Your Balance today is:  \(String(balance)) "

    }

    //MARK: - Actions
   
    @IBAction func sendButton(_ sender: Any) {
        class sendMoney: UIViewController {
            // ...

            var users: [User] = []
            var currentUser: User?

            
            
            @IBAction func transferMoneyButtonTapped(_ sender: Any) {
                // Present a view controller that displays a list of users to choose from
                let sendMoney = sendMoney(users: users)
                sendMoney.delegate = self
                present(UserRoomViewController, animated: true, completion: nil)
            }
        }

        extension LoginRegViewController: UserRoomViewController {
            func sendMoney(_ viewController: sendMoney, didSelectUser user: User) {
                // Transfer money to the selected user
                guard let user = currentUser, user.balance >= 10 else { return }
                currentUser.balance -= 10
                user.balance += 10
            }
        }

    }
        
    //-------------------------
    }

func addBalanceButton(_ sender: Any) {
                guard let user = user else { return }
                user.balance += 10
            }
        
    

