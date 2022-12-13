//
//  CollectionViewDataSource.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 10.12.2022.
//

import UIKit

protocol DataSourceProtocol: AnyObject {
    init(_ baseContentView: BaseContentViewProtocol)
}

final class CollectionViewDataSource: NSObject, UICollectionViewDataSource, DataSourceProtocol {

    private let model: CollectionViewModelProtocol = CollectionViewModel()
    weak var baseContentView: BaseContentViewProtocol?

     init(_ baseContentView: BaseContentViewProtocol) {
         self.baseContentView = baseContentView
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case baseContentView?.dogCollectionView:
            return model.dogs.count

        case baseContentView?.catCollectionView:
            return model.cats.count

        case baseContentView?.birdCollectionView:
            return model.birds.count

        case baseContentView?.reptileCollectionView:
            return model.reptiles.count
        default: break
        }

        return 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath)
                as? CollectionViewCell else { fatalError("don't collectionCell") }

        let dogImage = model.dogs[indexPath.row]
        let catImage = model.cats[indexPath.row]
        let birdImage = model.birds[indexPath.row]
        let reptileImage = model.reptiles[indexPath.row]

        switch collectionView {
        case baseContentView?.dogCollectionView:
            cell.set(image: dogImage)

        case baseContentView?.catCollectionView:
            cell.set(image: catImage)

        case baseContentView?.birdCollectionView:
            cell.set(image: birdImage)

        case baseContentView?.reptileCollectionView:
            cell.set(image: reptileImage)
        default: break
        }

        return cell
    }
}
