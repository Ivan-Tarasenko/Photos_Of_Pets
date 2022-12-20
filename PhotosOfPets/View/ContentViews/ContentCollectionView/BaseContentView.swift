//
//  BaseContentView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 09.12.2022.
//

import UIKit

protocol BaseContentViewProtocol: AnyObject {
    var dogCollectionView: UICollectionView {get set}
    var catCollectionView: UICollectionView {get set}
    var birdCollectionView: UICollectionView {get set}
    var reptileCollectionView: UICollectionView {get set}
    var model: CollectionViewModelProtocol {get set}
}

class BaseContentView: UIView, BaseContentViewProtocol {

    var collectionViewDataSource: UICollectionViewDataSource!
    var dogCollectionView: UICollectionView = CollectionView()
    var catCollectionView: UICollectionView = CollectionView()
    var birdCollectionView: UICollectionView = CollectionView()
    var reptileCollectionView: UICollectionView = CollectionView()

    var model: CollectionViewModelProtocol = CollectionViewModel()
    
    override init(frame: CGRect) {
        super.init(frame: CGRect(origin: .zero, size: CGSize(width: UIScreen.main.bounds.width, height: 200)))
        collectionViewDataSource = CollectionViewDataSource(self)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
