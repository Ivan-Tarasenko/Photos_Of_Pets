//
//  MainContentView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 07.12.2022.
//

import UIKit

protocol MainContentViewProtocol {}

protocol MainContentViewDelegate: AnyObject {
    var model: TableViewModelProtocol {get}
}

final class MainContentView: UIView, MainContentViewProtocol, MainContentViewDelegate {

    var model: TableViewModelProtocol = TableViewModel()
    var tableViewDataSource: UITableViewDataSource!
    private let tableView = TableView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        tableViewDataSource = TableViewDataSource(self)
        setMainContentView()
        setTableView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension MainContentView {
    
    func setMainContentView() {
        addSubview(tableView)
    }

    func setTableView() {
        tableView.dataSource = tableViewDataSource
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
