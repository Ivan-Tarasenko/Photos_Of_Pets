//
//  TableView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 09.12.2022.
//

import UIKit

final class TableView: UITableView {

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .grouped)
        setupTableView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupTableView() {
        separatorColor = .clear
        backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 247/255, alpha: 1)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
