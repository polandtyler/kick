//
//  CustomTabBarController.swift
//  kicks
//
//  Created by Tyler Poland on 10/21/18.
//  Copyright © 2018 Tyler Poland. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeViewController = HomeViewController()
        let runLogViewController = RunLogViewController()
    
        viewControllers = [homeViewController, runLogViewController]
    }


}
