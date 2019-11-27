//
//  FeedViewController.swift
//  FirebaseProj
//
//  Created by Kimball Yang on 11/25/19.
//  Copyright © 2019 Kimball Yang. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    lazy var feedLabel: UILabel = {
        let feed = UILabel()
        feed.translatesAutoresizingMaskIntoConstraints = false
        feed.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        feed.text = "Feed"
        feed.textColor = .white
        feed.textAlignment = .center
        feed.font = UIFont(name: "Futura", size: 50)
        view.addSubview(feed)
        return feed
    }()
    
    lazy var feedCollect: UICollectionView = {
        let feedCV = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        feedCV.translatesAutoresizingMaskIntoConstraints = false
        feedCV.layer.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        view.addSubview(feedCV)
        return feedCV
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        setFeedCons()
    }
    

    /*
     Feed
     CollectionView of Images
     clicking on image goes to Upload Image view
    */

    private func setFeedCons() {
        NSLayoutConstraint.activate([
            feedLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            feedLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            feedLabel.heightAnchor.constraint(equalToConstant: 50),
            feedLabel.widthAnchor.constraint(equalToConstant: 200),
            
            feedCollect.topAnchor.constraint(equalTo: feedLabel.bottomAnchor, constant: 10),
            feedCollect.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            feedCollect.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, constant: -10),
//            feedCollect.widthAnchor.constraint(equalToConstant: 350),
            feedCollect.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5)
        
            //feedCollect
        ])
        
        
    }
    
    
}
