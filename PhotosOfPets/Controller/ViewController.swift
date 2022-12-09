//
//  ViewController.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 06.12.2022.
//

import UIKit

extension ViewController where ContentView == MainContentView {

}

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
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
}
