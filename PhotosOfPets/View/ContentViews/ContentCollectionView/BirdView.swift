//
//  BirdView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 13.12.2022.
//

import UIKit

final class BirdView: BaseContentView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setBirdView()
        setBirdCollectionView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private extension
private extension BirdView {

    func setBirdView() {
        addSubview(birdCollectionView)

        if let layout = birdCollectionView.collectionViewLayout as? CollectionViewLayout {
            layout.layoutDelegate = self
        }

    }

    func setBirdCollectionView() {
        birdCollectionView.frame = frame
        birdCollectionView.dataSource = collectionViewDataSource
    }
}
