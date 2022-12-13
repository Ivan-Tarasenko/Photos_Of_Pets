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

extension DogView {

    func setDogView() {
        addSubview(dogCollectionView)

    }

    func setDogCollectionView() {
        dogCollectionView.frame = frame
        dogCollectionView.delegate = collectionViewDelegate
        dogCollectionView.dataSource = collectionViewDataSource
        dogCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)

    }
}
