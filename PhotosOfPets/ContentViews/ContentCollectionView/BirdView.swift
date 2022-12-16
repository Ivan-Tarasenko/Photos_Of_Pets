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

        if let layout = birdCollectionView.collectionViewLayout as? CollectionViewLayout {
            layout.layoutDelegate = self
        }

    }

    func setBirdCollectionView() {
        birdCollectionView.frame = frame
        birdCollectionView.delegate = collectionViewDelegate
        birdCollectionView.dataSource = collectionViewDataSource
        birdCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)

    }
}

extension BirdView: LayoutDelegate {
    
    var contentHeight: CGFloat {
        return birdCollectionView.bounds.height
    }

    func collectionView(_ collectionView: UICollectionView, heightForImageAtIndexPath indexPath: IndexPath) -> CGSize {
        return model.birds[indexPath.row].image.size
    }
}
