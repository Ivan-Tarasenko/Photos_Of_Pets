//
//  CatCell.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 11.12.2022.
//

import UIKit

final class CatCell: UICollectionViewCell {

    static var identifier: String {
        return String(describing: self)
    }

    let imageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        imageView.frame = frame
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}