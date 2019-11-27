//
//  SignUpViewController.swift
//  FirebaseProj
//
//  Created by Kimball Yang on 11/27/19.
//  Copyright © 2019 Kimball Yang. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    //MARK: Obj properties
    
    lazy var signUpLabel: UILabel = {
        let sup = UILabel()
        sup.translatesAutoresizingMaskIntoConstraints = false
        sup.text = "Create an Account"
        sup.textAlignment = .center
        sup.font = UIFont(name: "Futura", size: 40)
        sup.textColor = .white
        sup.layer.shadowOffset = CGSize(width: 5, height: 5)
        sup.layer.shadowRadius = 4
        sup.layer.shadowOpacity = 0.6
        sup.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        view.addSubview(sup)
        return sup
    }()
    
    lazy var daMessage: UILabel = {
        let mess = UILabel()
        mess.translatesAutoresizingMaskIntoConstraints = false
        mess.text = "Welcome to Pursuitstgram!"
        mess.textAlignment = .center
        mess.font = UIFont(name: "Georgia", size: 25)
        mess.adjustsFontSizeToFitWidth = true
        mess.layer.shadowOffset = CGSize(width: 5, height: 5)
        mess.layer.shadowRadius = 4
        mess.layer.shadowOpacity = 0.6
        mess.textColor = .white
        view.addSubview(mess)
        return mess
    }()
    
    lazy var emailField: UITextField = {
        let eField = UITextField()
        eField.translatesAutoresizingMaskIntoConstraints = false
        eField.borderStyle = .bezel
        eField.textColor = .lightGray
        eField.placeholder = "Enter valid e-mail..."
        eField.backgroundColor = .white
        eField.layer.shadowOffset = CGSize(width: 5, height: 5)
        eField.layer.shadowRadius = 4
        eField.layer.shadowOpacity = 0.6
        view.addSubview(eField)
        return eField
    }()
    
    lazy var passField: UITextField = {
        let pField = UITextField()
        pField.translatesAutoresizingMaskIntoConstraints = false
        pField.borderStyle = .bezel
        pField.textColor = .lightGray
        pField.placeholder = "Enter password..."
        pField.backgroundColor = .white
        pField.layer.shadowOffset = CGSize(width: 5, height: 5)
        pField.layer.shadowRadius = 4
        pField.layer.shadowOpacity = 0.6
        view.addSubview(pField)
        return pField
    }()
    
    lazy var daCreateButt: UIButton = {
        let daButt = UIButton()
        daButt.showsTouchWhenHighlighted = true
        daButt.translatesAutoresizingMaskIntoConstraints = false
        daButt.layer.cornerRadius = 10
        daButt.layer.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        daButt.layer.masksToBounds = false
        daButt.layer.shadowOffset = CGSize(width: 5, height: 5)
        daButt.layer.shadowRadius = 4
        daButt.layer.shadowOpacity = 0.6
        daButt.setTitle("Create Account", for: .normal)
        daButt.setTitleColor(.white, for: .normal)
        daButt.addTarget(self, action: #selector(showSignUp), for: .touchUpInside)
        view.addSubview(daButt)
        return daButt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setDaSUPCons()
    }
      
    private func showAlert(with title: String, and message: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alertVC, animated: true, completion: nil)
    }
    
    @objc func showSignUp() {
        guard let email = emailField.text, let password = passField.text else {
            showAlert(with: "Error", and: "Please fill out all fields.")
            return
        }
        
        guard email.isValidEmail else {
            showAlert(with: "Error", and: "Please enter a valid email")
            return
        }
        
        guard password.isValidPassword else {
            showAlert(with: "Error", and: "Please enter a valid password. Passwords must have at least 8 characters.")
            return
        }
        
        FirebaseAuthService.manager.createNewUser(email: email.lowercased(), password: password) { [weak self] (result) in
            self?.handleCreateAccountResponse(with: result)
        }
    }
    
    private func handleCreatedUserInFirestore(result: Result<(), Error>) {
        switch result {
        case .success:
            let feedVC = FeedViewController()
            feedVC.modalPresentationStyle = .fullScreen
            present(feedVC, animated: true, completion: nil)
        case .failure(let error):
            self.showAlert(with: "Error creating user", and: "An error occured while creating new account \(error)")
        }
    }
    private func handleCreateAccountResponse(with result: Result<User, Error>) {
        DispatchQueue.main.async { [weak self] in
            switch result {
            case .success(let user):
                FirestoreService.manager.createAppUser(user: AppUser(from: user)) { [weak self] newResult in
                    self?.handleCreatedUserInFirestore(result: newResult)
                }
            case .failure(let error):
                self?.showAlert(with: "Error creating user", and: "An error occured while creating new account \(error)")
            }
        }
    }
//    @objc func
    
    
    /*
    
    
     
    */
    
    private func setDaSUPCons() {
        NSLayoutConstraint.activate([
            signUpLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpLabel.heightAnchor.constraint(equalToConstant: 50),
            signUpLabel.widthAnchor.constraint(equalToConstant: 350),
            
            daMessage.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -90),
            daMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            daMessage.heightAnchor.constraint(equalToConstant: 40),
            daMessage.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -10),
            
            emailField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            emailField.heightAnchor.constraint(equalToConstant: 50),
            emailField.widthAnchor.constraint(equalToConstant: 300),
            
            passField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60),
            passField.heightAnchor.constraint(equalToConstant: 50),
            passField.widthAnchor.constraint(equalToConstant: 300),
        
            daCreateButt.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            daCreateButt.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 250),
            daCreateButt.heightAnchor.constraint(equalToConstant: 30),
            daCreateButt.widthAnchor.constraint(equalToConstant: 230)
        
        ])
        
        
        
    }

}
