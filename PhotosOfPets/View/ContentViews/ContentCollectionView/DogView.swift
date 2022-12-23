//
//  DogView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 13.12.2022.
//

import UIKit

final class DogView: BaseContentView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setDogView()
        setDogCollectionView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private extension
private extension DogView {

    func setDogView() {
        addSubview(dogCollectionView)

        if let layout = dogCollectionView.collectionViewLayout as? CollectionViewLayout {
            layout.layoutDelegate = self
        }

    }

    func setDogCollectionView() {
        dogCollectionView.frame = bounds
        dogCollectionView.dataSource = collectionViewDataSource
    }
}
