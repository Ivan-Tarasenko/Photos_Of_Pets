//
//  MainContentView.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 07.12.2022.
//

import UIKit

protocol MainContentViewProtocol {}

final class MainContentView: UIView, MainContentViewProtocol {

    private let tableView = TableView()
    private let tableViewDelegate = TableViewDelegate()
    private var tableViewDataSource = TableViewDataSource()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setMainContentView()
        setTableView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setMainContentView() {
        addSubview(tableView)
    }
}

extension MainContentView {
    func setTableView() {

        tableView.frame = UIScreen.main.bounds
        tableView.delegate = tableViewDelegate
        tableView.dataSource = tableViewDataSource
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
    }
}
