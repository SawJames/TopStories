//
//  NewsFeedViewController.swift
//  TopStories
//
//  Created by saw Tarmalar on 23/11/2020.
//

import UIKit

class NewsFeedViewController: UIViewController {

    private let newFeedView = NewFeedView()
    
    override func loadView() {
        view = newFeedView
    }
    override func viewDidLoad() {
        super.viewDidLoad()

//        view.backgroundColor = .systemBackground
        
        //setting up collection view datasource and delegeate
        newFeedView.collectionView.dataSource = self
        newFeedView.collectionView.delegate = self
        
        newFeedView.collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
  
}

extension NewsFeedViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .gray
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let maxSize : CGSize = UIScreen.main.bounds.size
        let itemWidth : CGFloat = maxSize.width
        let itemHeight : CGFloat = maxSize.height * 0.30 // 30%
        return CGSize(width: itemWidth, height: itemHeight)
    }
    
    
}

