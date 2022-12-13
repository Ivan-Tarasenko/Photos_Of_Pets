//
//  ReptileView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 13.12.2022.
//

import UIKit

final class ReptileView: BaseContentView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setReptileView()
        setCatCollectionView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ReptileView {

    func setReptileView() {
        addSubview(reptileCollectionView)

    }

    func setCatCollectionView() {
        reptileCollectionView.frame = frame
        reptileCollectionView.delegate = collectionViewDelegate
        reptileCollectionView.dataSource = collectionViewDataSource
        reptileCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)

    }
}
