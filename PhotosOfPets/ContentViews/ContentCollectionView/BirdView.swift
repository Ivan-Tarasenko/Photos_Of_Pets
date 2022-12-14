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

extension BirdView {

    func setBirdView() {
        addSubview(birdCollectionView)

    }

    func setBirdCollectionView() {
        birdCollectionView.frame = frame
        birdCollectionView.delegate = collectionViewDelegate
        birdCollectionView.dataSource = collectionViewDataSource
        birdCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)

    }
}
