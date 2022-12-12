//
//  CollectionViewDataSource.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 10.12.2022.
//

import UIKit

protocol TestDataSourceProtocol: AnyObject {
    init(_ dogView: DogViewProtocol)
    init(_ catView: CatViewProtocol)
}

final class CollectionViewDataSource: NSObject, UICollectionViewDataSource, TestDataSourceProtocol {

    private let model: CollectionViewModelProtocol = CollectionViewModel()
    
    weak var dogView: DogViewProtocol?
    weak var catView: CatViewProtocol?

     init(_ dogView: DogViewProtocol) {
        self.dogView = dogView
    }

     init(_ catView: CatViewProtocol) {
        self.catView = catView
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if dogView == nil {
            print("Dog nil")
        } else {
            print("Dog not nil")
        }

        if catView == nil {
            print("Cat nil")
        } else {
            print("Cat not nil")
        }

        if collectionView == dogView?.dogCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DogCell.identifier, for: indexPath)
                    as? DogCell else { fatalError("don't collectionCell") }

            let imagePets = model.dogs[indexPath.row]
            cell.imageView.image = imagePets.image

            return cell
        }

        return UICollectionViewCell()

    }
}
