//
//  CollectionViewDataSource.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 10.12.2022.
//

import UIKit

final class CollectionViewDataSource: NSObject, UICollectionViewDataSource {

    private let model: CollectionViewModelProtocol = CollectionViewModel()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath)
                as? CollectionViewCell else { fatalError("don't collectionCell") }

        let imagePets = model.dogs[indexPath.row]
        cell.imageView.image = imagePets.image

        return cell
    }
}
