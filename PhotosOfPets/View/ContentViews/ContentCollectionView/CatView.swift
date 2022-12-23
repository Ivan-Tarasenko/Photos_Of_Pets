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

// MARK: - Private extension
private extension CatView {

    func setCatView() {
        addSubview(catCollectionView)

        if let layout = catCollectionView.collectionViewLayout as? CollectionViewLayout {
            layout.layoutDelegate = self
        }

    }

    func setCatCollectionView() {
        catCollectionView.frame = frame
        catCollectionView.dataSource = collectionViewDataSource
    }
}
