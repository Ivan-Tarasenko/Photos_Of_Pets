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
        setReptileCollectionView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private extension
private extension ReptileView {

    func setReptileView() {
        addSubview(reptileCollectionView)

        if let layout = reptileCollectionView.collectionViewLayout as? CollectionViewLayout {
            layout.layoutDelegate = self
        }

    }

    func setReptileCollectionView() {
        reptileCollectionView.frame = frame
        reptileCollectionView.dataSource = collectionViewDataSource
    }
}
