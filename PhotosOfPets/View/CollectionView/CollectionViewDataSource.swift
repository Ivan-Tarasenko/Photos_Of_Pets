//
//  CollectionViewDataSource.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 10.12.2022.
//

import UIKit

protocol DataSourceCollectionViewProtocol: AnyObject {
    init(_ baseContentView: BaseContentViewProtocol)
}

final class CollectionViewDataSource: NSObject, UICollectionViewDataSource, DataSourceCollectionViewProtocol {
    
    weak var baseContentView: BaseContentViewProtocol?
    
    init(_ baseContentView: BaseContentViewProtocol) {
        self.baseContentView = baseContentView
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        guard let content = baseContentView else { fatalError("baseContent nil")}
        
        switch collectionView {
        case content.dogCollectionView:
            return content.model.dogs.count
            
        case content.catCollectionView:
            return content.model.cats.count
            
        case content.birdCollectionView:
            return content.model.birds.count
            
        case content.reptileCollectionView:
            return content.model.reptiles.count
        default: break
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath)
                as? CollectionViewCell else { fatalError("don't collectionCell") }
        guard let content = baseContentView else { fatalError("baseContent nil")}
        
        let dogImage = content.model.dogs[indexPath.row]
        let catImage = content.model.cats[indexPath.row]
        let birdImage = content.model.birds[indexPath.row]
        let reptileImage = content.model.reptiles[indexPath.row]
        
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
