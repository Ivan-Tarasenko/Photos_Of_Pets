//
//  TableViewModel.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 09.12.2022.
//

import Foundation

protocol TableViewModelProtocol {
    var pets: [String] {get}
}

final class TableViewModel: TableViewModelProtocol {

    let pets = ["Dogs", "Cats", "Birds", "Reptiles"]
}
