//
//  TableViewCell.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 09.12.2022.
//

import UIKit

final class TableViewCell: UITableViewCell {

    static var identifier: String {
        return String(describing: self)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(ContentViewCollection())
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
