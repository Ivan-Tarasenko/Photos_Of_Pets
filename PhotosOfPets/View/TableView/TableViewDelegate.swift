//
//  TableViewDelegate.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 09.12.2022.
//

import UIKit

final class TableViewDelegate: NSObject, UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let heightContent = BaseContentView().frame.height
        return heightContent
    }

    // Метод позволяет работать с секцией
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as? UITableViewHeaderFooterView

        header?.textLabel?.textColor = .darkGray
        header?.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 15)
    }
}
