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

class TableViewModel: TableViewModelProtocol {

    var pets = ["Dogs", "Cats", "Birds", "Reptiles"]
}
