//
//  SecondViewController.swift
//  kicks
//
//  Created by Tyler Poland on 10/21/18.
//  Copyright © 2018 Tyler Poland. All rights reserved.
//

import UIKit
import MapKit

class RunLogViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem.image = UIImage(named: "tabbar-myLogIconGray")
        self.tabBarItem.selectedImage = UIImage(named: "tabbar-myLogIcon")
        self.tabBarItem.title = "My Log"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {

    }
}

extension RunLogViewController: UITableViewDelegate {
    
}

extension RunLogViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

