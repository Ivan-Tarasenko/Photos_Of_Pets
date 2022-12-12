//
//  CatView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 12.12.2022.
//

import UIKit

protocol CatViewProtocol: AnyObject {
    var catCollectionView: UICollectionView {get set}
}

final class CatView: UIView, CatViewProtocol {

    private let model: CollectionViewModelProtocol = CollectionViewModel()
    var collectionViewDataSource: UICollectionViewDataSource!
    var catCollectionView: UICollectionView = CollectionView()
    weak var collectionViewDelegate: CollectionViewDelegate?

    override init(frame: CGRect) {
        super.init(frame: CGRect(origin: .zero, size: CGSize(width: UIScreen.main.bounds.width, height: 200)))

//        collectionViewDataSource = CollectionViewDataSource(self)
        setCatView()
        setCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CatView {

    func setCatView() {
        addSubview(catCollectionView)

    }

    func setCollectionView() {
        catCollectionView.frame = frame
        catCollectionView.delegate = collectionViewDelegate
        catCollectionView.dataSource = collectionViewDataSource
        catCollectionView.register(CatCell.self, forCellWithReuseIdentifier: CatCell.identifier)

    }
}
