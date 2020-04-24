//
//  FaceMaskViewController.swift
//  FaceDetection
//
//  Created by Shaheen Ghiassy on 4/24/20.
//  Copyright © 2020 Shaheen Ghiassy. All rights reserved.
//

import ARKit

class FaceMaskViewController:UIViewController, ARSCNViewDelegate {

    let sceneView = ARSCNView(frame: UIScreen.main.bounds)


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(sceneView)
        sceneView.delegate = self
        guard ARFaceTrackingConfiguration.isSupported else { return }
        let configuration = ARFaceTrackingConfiguration()
        configuration.isLightEstimationEnabled = true
        sceneView.session.run(configuration, options: [.resetTracking, .removeExistingAnchors])
        setupTabBar()
    }

    func setupTabBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Face Mask"
        if #available(iOS 13.0, *) {
            self.navigationController?.navigationBar.barTintColor = .systemBackground
             navigationController?.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.label]
        } else {
            // Fallback on earlier versions
            self.navigationController?.navigationBar.barTintColor = .lightText
            navigationController?.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.black]
        }
        self.navigationController?.navigationBar.isHidden = false
        self.setNeedsStatusBarAppearanceUpdate()
        self.navigationItem.largeTitleDisplayMode = .automatic
        self.navigationController?.navigationBar.barStyle = .default
        if #available(iOS 13.0, *) {
            navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor : UIColor.label]
        } else {
            navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor : UIColor.black]
        }
        if #available(iOS 13.0, *) {
            navigationController?.navigationBar.backgroundColor = .systemBackground
        } else {
            // Fallback on earlier versions
            navigationController?.navigationBar.backgroundColor = .white
        }
        self.tabBarController?.tabBar.isHidden = false
    }
    
}
