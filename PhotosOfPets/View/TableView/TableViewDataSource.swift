//
//  TableViewDataSource.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 09.12.2022.
//

import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource {

    private let tableViewModel: TableViewModelProtocol = TableViewModel()

    func numberOfSections(in tableView: UITableView) -> Int {
        tableViewModel.pets.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath)
                as? TableViewCell else { fatalError("don't cell") }

                return cell
    }
}
