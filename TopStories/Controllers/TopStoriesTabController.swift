//
//  TopStoriesTabController.swift
//  TopStories
//
//  Created by saw Tarmalar on 23/11/2020.
//

import UIKit

class TopStoriesTabController: UITabBarController {
    
    private lazy var  newFeedVC : NewsFeedViewController = {
        let viewController = NewsFeedViewController()
        viewController.tabBarItem = UITabBarItem(title: "News Feed", image: UIImage(systemName: "eyeglasses"), tag: 0)
        return viewController
    }()
    
    private lazy var  savedVC : SavedArticleViewController = {
        let saveController = SavedArticleViewController()
        saveController.tabBarItem = UITabBarItem(title: "Saved Articles", image: UIImage(systemName: "folder"), tag: 0)
        return saveController
    }()
    
    private lazy var  settingVC : SettingViewController = {
        let viewController = SettingViewController()
        viewController.tabBarItem = UITabBarItem(title: "Setting", image: UIImage(systemName: "gear"), tag: 0)
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        viewControllers = [newFeedVC, savedVC, settingVC]
    }
    


}
