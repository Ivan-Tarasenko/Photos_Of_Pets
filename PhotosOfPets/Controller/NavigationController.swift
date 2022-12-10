//
//  NavigationController.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 10.12.2022.
//
import UIKit

class NavigationController: UINavigationController, UIViewControllerTransitioningDelegate {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.prefersLargeTitles = true
    }
}
