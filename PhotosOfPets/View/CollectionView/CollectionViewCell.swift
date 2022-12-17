//
//  CollectionViewCell.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 10.12.2022.
//

import UIKit

final class CollectionViewCell: UICollectionViewCell {

    static var identifier: String {
        return String(describing: self)
    }

    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        addSubview(imageView)
        imageView.frame = frame
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func set(image: PetImage) {
        imageView.image = image.image
    }
}
