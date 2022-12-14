//
//  CollectionView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 10.12.2022.
//

import UIKit

final class CollectionView: UICollectionView {

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: CollectionViewLayout())
        registerCell()
        autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func registerCell() {
        register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
    }
}
