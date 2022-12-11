//
//  ContentViewCollection.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 09.12.2022.
//

import UIKit

final class ContentViewCollection: UIView {

    private let collectionView = CollectionView()
    private let collectionViewDataSource = CollectionViewDataSource()
    weak var collectionViewDelegate: CollectionViewDelegate?

    override init(frame: CGRect) {
        super.init(frame: CGRect(origin: .zero, size: CGSize(width: UIScreen.main.bounds.width, height: 200)))
        setContentViewCollection()
        setCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ContentViewCollection {

    func setContentViewCollection() {
        addSubview(collectionView)
    }

    func setCollectionView() {
        collectionView.frame = frame
        collectionView.delegate = collectionViewDelegate
        collectionView.dataSource = collectionViewDataSource
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
       
    }
}
