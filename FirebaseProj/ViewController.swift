//
//  ViewController.swift
//  FirebaseProj
//
//  Created by Kimball Yang on 11/25/19.
//  Copyright © 2019 Kimball Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Todo: Object properties
    
    lazy var megaLabel: UILabel = {
        let daLabel = UILabel()
        daLabel.text = "Pursuitstagram"
        daLabel.textAlignment = .center
        daLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        daLabel.layer.masksToBounds = false
        daLabel.shadowOffset = CGSize(width: 5, height: 5)
        daLabel.layer.shadowRadius = 4
        daLabel.layer.shadowOpacity = 0.6
        daLabel.font = UIFont(name: "Futura", size: 50)
        daLabel.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        //daLabel.font = UIFont.systemFont(ofSize: 50)
        daLabel.translatesAutoresizingMaskIntoConstraints = false
        daLabel.adjustsFontSizeToFitWidth = true
        view.addSubview(daLabel)
        return daLabel
    }()
    
    lazy var daEmail: UITextField = {
        let daText = UITextField()
        daText.translatesAutoresizingMaskIntoConstraints = false
        daText.layer.cornerRadius = 5
        daText.borderStyle = .bezel
        daText.textColor = .lightGray
        daText.text = "Enter E-mail..."
        daText.adjustsFontSizeToFitWidth = true
        daText.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.addSubview(daText)
        return daText
    }()
    
    lazy var daPassword: UITextField = {
        let daPW = UITextField()
        daPW.translatesAutoresizingMaskIntoConstraints = false
        daPW.layer.cornerRadius = 5
        daPW.borderStyle = .bezel
        daPW.text = "Enter Password..."
        daPW.textColor = .lightGray
        daPW.isSecureTextEntry = true
        daPW.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.addSubview(daPW)
        return daPW
    }()
    
    lazy var daLogin: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        button.layer.masksToBounds = false
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.6
        button.setTitle("Log in", for: .normal)
        button.setTitleColor(.white, for: .normal)
        view.addSubview(button)
        return button
    }()
    
    lazy var daCreateButt: UIButton = {
        let daButt = UIButton()
        daButt.translatesAutoresizingMaskIntoConstraints = false
        daButt.layer.cornerRadius = 10
        daButt.layer.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        daButt.layer.masksToBounds = false
        daButt.layer.shadowOffset = CGSize(width: 5, height: 5)
        daButt.layer.shadowRadius = 4
        daButt.layer.shadowOpacity = 0.6
        daButt.setTitle("Create Account", for: .normal)
        daButt.setTitleColor(.white, for: .normal)
        view.addSubview(daButt)
        return daButt
    }()
    
    /*
     text field for email
     text field for password
     login button
     create account button
     
     
     */
    
    //MARK: Todo: Object functions
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        setDaCons()
        
    }

    
    //MARK: Todo: UI setup
    
    private func setTextFieldCons() {
        NSLayoutConstraint.activate([
            daEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            daEmail.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            daEmail.heightAnchor.constraint(equalToConstant: 50),
            daEmail.widthAnchor.constraint(equalToConstant: 300),
            
            daPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            daPassword.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60),
            daPassword.heightAnchor.constraint(equalToConstant: 50),
            daPassword.widthAnchor.constraint(equalToConstant: 300),
            
            megaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            megaLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -250),
            megaLabel.heightAnchor.constraint(equalToConstant: 100),
            megaLabel.widthAnchor.constraint(equalToConstant: 340)
        ])
    }
    
    private func setButtCons() {
        NSLayoutConstraint.activate([
            daLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            daLogin.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            daLogin.heightAnchor.constraint(equalToConstant: 30),
            daLogin.widthAnchor.constraint(equalToConstant: 150),
            
            daCreateButt.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            daCreateButt.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 250),
            daCreateButt.heightAnchor.constraint(equalToConstant: 30),
            daCreateButt.widthAnchor.constraint(equalToConstant: 230)
            
            
        ])
    }
    
    private func setDaCons() {
        setTextFieldCons()
        setButtCons()
    }

}

