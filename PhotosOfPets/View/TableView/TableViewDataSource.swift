//
//  TableViewDataSource.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 09.12.2022.
//

import UIKit

final class TableViewDataSource: NSObject, UITableViewDataSource {

    private let tableViewModel: TableViewModelProtocol = TableViewModel()

    func numberOfSections(in tableView: UITableView) -> Int {
        tableViewModel.pets.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = tableViewModel.pets[section]
        return section
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath)
                as? TableViewCell else { fatalError("don't cell") }

        switch indexPath.section {
        case 0:
            cell.add(view: DogView())
        case 1:
            cell.add(view: CatView())
        case 2:
            cell.add(view: BirdView())
        case 3:
            cell.add(view: ReptileView())
        default:
            break
        }

                return cell
    }
}
