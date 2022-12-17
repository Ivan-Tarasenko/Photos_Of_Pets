//
//  CollectionView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 10.12.2022.
//

import UIKit

final class CollectionView: UICollectionView {

    weak var collectionViewDelegate: CollectionViewDelegate?

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: CollectionViewLayout())
        
        autoresizingMask = [.flexibleWidth, .flexibleHeight]
        delegate = collectionViewDelegate
        register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
