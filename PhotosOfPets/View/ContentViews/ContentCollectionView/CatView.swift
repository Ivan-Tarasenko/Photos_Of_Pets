//
//  CatView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 12.12.2022.
//

import UIKit

final class CatView: BaseContentView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setCatView()
        setCatCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CatView {

    func setCatView() {
        addSubview(catCollectionView)

    }

    func setCatCollectionView() {
        catCollectionView.frame = frame
        catCollectionView.delegate = collectionViewDelegate
        catCollectionView.dataSource = collectionViewDataSource
        catCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)

    }
}
