//
//  MainContentView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 07.12.2022.
//

import UIKit

protocol MainContentViewProtocol {}

final class MainContentView: UIView, MainContentViewProtocol {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemCyan
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
