//
//  ProfileViewController.swift
//  FirebaseProj
//
//  Created by Kimball Yang on 11/25/19.
//  Copyright © 2019 Kimball Yang. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    //MARK: Todo: Object properties
    
    lazy var profileLabel: UILabel = {
        let label = UILabel()
        label.layer.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        label.text = "Profile name"
        label.textAlignment = .center
        label.font = UIFont(name: "Georgia-Bold", size: 30)
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
        dispLabel.layer.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        dispLabel.translatesAutoresizingMaskIntoConstraints = false
        dispLabel.textAlignment = .center
        view.addSubview(dispLabel)
        return dispLabel
    }()
    
    lazy var editButton: UIButton = {
        let eButton = UIButton()
        eButton.layer.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        eButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eButton)
       return eButton
    }()
    
    lazy var numOfImages: UILabel = {
        let numLabel = UILabel()
        numLabel.layer.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        numLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(numLabel)
        return numLabel
    }()
    
    /*
     Profile label
     Image
     displayName
     Edit
     
     email
     number of images submitted
     
     */
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDaProfileCons()
        
    }
    

    //MARK: UI constraints
    
    private func setDaProfileCons() {
        NSLayoutConstraint.activate([
            //profileLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -300),
            profileLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
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
            dispName.widthAnchor.constraint(equalToConstant: 330)
        
        
        
        
        ])
    }

}
