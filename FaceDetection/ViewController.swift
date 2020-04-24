//
//  ViewController.swift
//  FaceDetection
//
//  Created by Shaheen Ghiassy on 4/24/20.
//  Copyright © 2020 Shaheen Ghiassy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setupButtons()
    }

    @objc func buttonToFaceMask(_ sender: UIButton) {
        let controller = FaceMaskViewController()
        let navController = UINavigationController(rootViewController: controller)
        self.present(navController, animated: true, completion: nil)
    }


    @objc func buttonToFaceDetection(_ sender: UIButton) {
        let controller = FaceDetectionViewController()
        let navController = UINavigationController(rootViewController: controller)
        self.present(navController, animated: true, completion: nil)
    }


    @objc func buttonToFaceClassification(_ sender: UIButton) {
        let controller = FaceClassificationViewController()
        let navController = UINavigationController(rootViewController: controller)
        self.present(navController, animated: true, completion: nil)
    }


    @objc func buttonToObjectDetection(_ sender: UIButton) {
        let controller = ObjectDetectionViewController()
        let navController = UINavigationController(rootViewController: controller)
        self.present(navController, animated: true, completion: nil)
    }

    private func setupButtons() {
       view.addSubview(faceMask)
       view.addSubview(faceDetection)
       view.addSubview(faceClassification)
       view.addSubview(objectDetection)

       faceMask.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       faceMask.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
       faceMask.heightAnchor.constraint(equalToConstant: 70).isActive = true
       faceMask.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

       faceDetection.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       faceDetection.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
       faceDetection.heightAnchor.constraint(equalToConstant: 70).isActive = true
       faceDetection.topAnchor.constraint(equalTo: faceMask.bottomAnchor, constant: 30).isActive = true

       faceClassification.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       faceClassification.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
       faceClassification.heightAnchor.constraint(equalToConstant: 70).isActive = true
       faceClassification.topAnchor.constraint(equalTo: faceDetection.bottomAnchor, constant: 30).isActive = true

       objectDetection.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       objectDetection.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
       objectDetection.heightAnchor.constraint(equalToConstant: 70).isActive = true
       objectDetection.topAnchor.constraint(equalTo: faceClassification.bottomAnchor, constant: 30).isActive = true
   }

    let faceMask: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(buttonToFaceMask(_:)), for: .touchUpInside)
            button.setTitle("Face mask", for: .normal)
    //        let icon = UIImage(systemName: "eye")?.resized(newSize: CGSize(width: 50, height: 30))
    //        button.addRightImage(image: icon!, offset: 30)
            button.backgroundColor = .systemGreen
            button.layer.borderColor = UIColor.systemGreen.cgColor
            button.layer.shadowOpacity = 0.3
            button.layer.shadowColor = UIColor.systemGreen.cgColor

            return button
        }()

        let faceDetection: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(buttonToFaceDetection(_:)), for: .touchUpInside)
            button.setTitle("Face detection", for: .normal)
    //        let icon = UIImage(systemName: "person.3.fill")?.resized(newSize: CGSize(width: 50, height: 25))
    //        button.addRightImage(image: icon!, offset: 30)
            button.backgroundColor = .systemOrange
            button.layer.borderColor = UIColor.systemOrange.cgColor
            button.layer.shadowOpacity = 0.3
            button.layer.shadowColor = UIColor.systemOrange.cgColor

            return button
        }()

        let faceClassification: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(buttonToFaceClassification(_:)), for: .touchUpInside)
            button.setTitle("Face classification", for: .normal)
    //        let icon = UIImage(systemName: "tray.fill")?.resized(newSize: CGSize(width: 50, height: 40))
    //        button.addRightImage(image: icon!, offset: 30)
            button.backgroundColor = .systemBlue
            button.layer.borderColor = UIColor.systemBlue.cgColor
            button.layer.shadowOpacity = 0.3
            button.layer.shadowColor = UIColor.systemBlue.cgColor

            return button
        }()

        let objectDetection: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(buttonToObjectDetection(_:)), for: .touchUpInside)
            button.setTitle("Object detection", for: .normal)
    //        let icon = UIImage(systemName: "crop")?.resized(newSize: CGSize(width: 50, height: 50))
    //        button.addRightImage(image: icon!, offset: 30)
            button.backgroundColor = .systemPurple
            button.layer.borderColor = UIColor.systemPurple.cgColor
            button.layer.shadowOpacity = 0.3
            button.layer.shadowColor = UIColor.systemPurple.cgColor

            return button
        }()
}
