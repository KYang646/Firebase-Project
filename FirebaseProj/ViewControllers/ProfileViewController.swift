//
//  ProfileViewController.swift
//  FirebaseProj
//
//  Created by Kimball Yang on 11/25/19.
//  Copyright © 2019 Kimball Yang. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var settingFromLogin = false

    //MARK: Todo: Object properties
    
    lazy var profileLabel: UILabel = {
        let label = UILabel()
        label.layer.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "Profile"
        label.textAlignment = .center
        label.font = UIFont(name: "Futura", size: 50)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        return label
    }()
    
    lazy var profImage: UIImageView = {
        let image = UIImageView()
        image.layer.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        return image
    }()
    
    lazy var dispName: UILabel = {
        let dispLabel = UILabel()
        dispLabel.layer.backgroundColor = .none
        dispLabel.text = "James Hetfield"
        dispLabel.textColor = .white
        dispLabel.adjustsFontSizeToFitWidth = true
        dispLabel.shadowOffset = CGSize(width: 2, height: 2)
        dispLabel.layer.shadowRadius = 4
        dispLabel.shadowColor = .black
        dispLabel.font = UIFont(name: "Palatino-Bold", size: 40)
        dispLabel.translatesAutoresizingMaskIntoConstraints = false
        dispLabel.textAlignment = .center
        view.addSubview(dispLabel)
        return dispLabel
    }()
    
    lazy var editButton: UIButton = {
        let eButton = UIButton()
        eButton.layer.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        eButton.setTitle("Edit", for: .normal)
        eButton.setTitleColor(.white, for: .normal)
        eButton.layer.cornerRadius = 10
        eButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        eButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        eButton.layer.shadowRadius = 4
        eButton.layer.shadowOpacity = 0.6
        eButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eButton)
       return eButton
    }()
    
    lazy var eLabel: UILabel = {
        let email = UILabel()
        email.layer.backgroundColor = .none
        email.text = "jameshetfield@yosemite.com"
        email.textColor = .white
        email.adjustsFontSizeToFitWidth = true
        email.shadowOffset = CGSize(width: 2, height: 2)
        email.layer.shadowRadius = 4
        email.shadowColor = .black
        email.font = UIFont(name: "Palatino-Bold", size: 22)
        email.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(email)
        return email
    }()
    
    lazy var numOfImages: UILabel = {
        let numLabel = UILabel()
        numLabel.layer.backgroundColor = .none
        numLabel.text = "You have submitted 18 images."
        numLabel.textColor = .white
        numLabel.adjustsFontSizeToFitWidth = true
        numLabel.shadowOffset = CGSize(width: 2, height: 2)
        numLabel.layer.shadowRadius = 4
        numLabel.shadowColor = .black
        numLabel.font = UIFont(name: "Palatino-Bold", size: 22)
        numLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(numLabel)
        return numLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        setDaProfileCons()
        
    }
    
    //MARK: UI constraints
    
    private func setDaProfileCons() {
        NSLayoutConstraint.activate([
            //profileLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -300),
            profileLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            profileLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileLabel.heightAnchor.constraint(equalToConstant: 50),
            profileLabel.widthAnchor.constraint(equalToConstant: 300),
            
            //profImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150),
            profImage.topAnchor.constraint(equalTo: profileLabel.bottomAnchor, constant: 20),
            profImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profImage.heightAnchor.constraint(equalToConstant: 350),
            profImage.widthAnchor.constraint(equalToConstant: 230),
            
            dispName.topAnchor.constraint(equalTo: profImage.bottomAnchor, constant: 20),
            dispName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dispName.heightAnchor.constraint(equalToConstant: 60),
            dispName.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            editButton.topAnchor.constraint(equalTo: dispName.bottomAnchor, constant: 20),
            editButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            editButton.heightAnchor.constraint(equalToConstant: 30),
            editButton.widthAnchor.constraint(equalToConstant: 100),
            
            eLabel.topAnchor.constraint(equalTo: editButton.bottomAnchor, constant: 30),
            eLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            eLabel.heightAnchor.constraint(equalToConstant: 30),
            eLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30),
            
            numOfImages.topAnchor.constraint(equalTo: eLabel.bottomAnchor, constant:  5),
            numOfImages.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            numOfImages.heightAnchor.constraint(equalToConstant: 30),
            numOfImages.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30)
        
        ])
    }

}
