//
//  DogView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 09.12.2022.
//

import UIKit

protocol DogViewProtocol: AnyObject {
    var dogCollectionView: UICollectionView {get set}
}

class DogView: UIView, DogViewProtocol {

    private let model: CollectionViewModelProtocol = CollectionViewModel()
    var collectionViewDataSource: UICollectionViewDataSource!
    var dogCollectionView: UICollectionView = CollectionView()
    weak var collectionViewDelegate: CollectionViewDelegate?

    override init(frame: CGRect) {
        super.init(frame: CGRect(origin: .zero, size: CGSize(width: UIScreen.main.bounds.width, height: 200)))

        collectionViewDataSource = CollectionViewDataSource(self)
        setDogView()
        setCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DogView {

    func setDogView() {
        addSubview(dogCollectionView)
    }

    func setCollectionView() {
        dogCollectionView.frame = frame
        dogCollectionView.delegate = collectionViewDelegate
        dogCollectionView.dataSource = collectionViewDataSource
        dogCollectionView.register(DogCell.self, forCellWithReuseIdentifier: DogCell.identifier)
    }
}
