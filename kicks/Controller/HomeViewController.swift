//
//  FirstViewController.swift
//  kicks
//
//  Created by Tyler Poland on 10/21/18.
//  Copyright © 2018 Tyler Poland. All rights reserved.
//

import UIKit
import MapKit

class HomeViewController: UIViewController {
    
    let bgImageView = UIImageView()
    let runLabel = UILabel()
    let mapView = MKMapView()
    let locationButton = UIButton()
    let startRunningContainerView = UIView()
    let startRunningButton = UIButton()
    let startRunningLabel = UILabel()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem.image = UIImage(named: "tabbar-runIconGray")
        self.tabBarItem.selectedImage = UIImage(named: "tabbar-runIcon")
        self.tabBarItem.title = "Run"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildViews()
        constrainViews()
    }
    
    private func buildViews() {
        view.addSubview(bgImageView)
        view.addSubview(runLabel)
        view.addSubview(mapView)
        view.addSubview(locationButton)
        view.addSubview(startRunningContainerView)
        
        bgImageView.image = UIImage(named: "BG")
        bgImageView.contentMode = .scaleAspectFit
        runLabel.text = "Run"
        runLabel.textColor = UIColor.white
        locationButton.setImage(UIImage(named: "centerNavButton"), for: .normal)
        startRunningButton.setImage(UIImage(named: "startRunningButton"), for: .normal)
    }
    
    
    private func constrainViews() {
        constrainRunLabel()
        constrainBackground()
        constrainMapView()
        constrainLocationButton()
        buildStartRunningContainer()
        constrainStartRunningContainer()
    }
    
    private func constrainRunLabel() {
        runLabel.translatesAutoresizingMaskIntoConstraints = false
        runLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        runLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
    
    private func constrainBackground() {
        bgImageView.translatesAutoresizingMaskIntoConstraints = false
        bgImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        bgImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        bgImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        bgImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    private func constrainMapView() {
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: runLabel.bottomAnchor, constant: 16).isActive = true
        mapView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mapView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor).isActive = true
        mapView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.7).isActive = true
    }
    
    private func constrainLocationButton() {
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.bottomAnchor.constraint(equalTo: mapView.bottomAnchor, constant: -8).isActive = true
        locationButton.trailingAnchor.constraint(equalTo: mapView.trailingAnchor, constant: -8).isActive = true
        locationButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        locationButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    private func buildStartRunningContainer() {
        startRunningButton.contentMode = .scaleToFill
        startRunningContainerView.backgroundColor = UIColor.clear
        startRunningContainerView.addSubview(startRunningButton)
        startRunningContainerView.addSubview(startRunningLabel)
        
        startRunningButton.translatesAutoresizingMaskIntoConstraints = false
        startRunningButton.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        startRunningButton.centerXAnchor.constraint(equalTo: startRunningContainerView.centerXAnchor).isActive = true
        startRunningButton.centerYAnchor.constraint(equalTo: startRunningContainerView.centerYAnchor).isActive = true
    }
    
    private func constrainStartRunningContainer() {
        startRunningContainerView.translatesAutoresizingMaskIntoConstraints = false
        startRunningContainerView.autoresizingMask = .flexibleHeight
        startRunningContainerView.topAnchor.constraint(equalTo: mapView.bottomAnchor).isActive = true
        startRunningContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        startRunningContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        startRunningContainerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
}

