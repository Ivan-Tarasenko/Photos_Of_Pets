//
//  ViewController.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 06.12.2022.
//

import UIKit

final class ViewController<ContentView: MainContentViewProtocol>: UIViewController {

    private let contentView: ContentView

    init(contentView: ContentView) {
        self.contentView = contentView
        super .init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = contentView as? UIView
        title = "Pents"
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

    }
}
