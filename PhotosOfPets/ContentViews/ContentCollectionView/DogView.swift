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

        if let layout = dogCollectionView.collectionViewLayout as? CollectionViewLayout {
            layout.layoutDelegate = self
        }

    }

    func setDogCollectionView() {
        dogCollectionView.frame = frame
        dogCollectionView.delegate = collectionViewDelegate
        dogCollectionView.dataSource = collectionViewDataSource
        dogCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)

    }
}

extension DogView: LayoutDelegate {

    var contentHeight: CGFloat {
        return dogCollectionView.bounds.height
    }

    func collectionView(_ collectionView: UICollectionView, heightForImageAtIndexPath indexPath: IndexPath) -> CGSize {
        return model.dogs[indexPath.row].image.size
    }

}
