//
//  CollectionViewModel.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 10.12.2022.
//

import UIKit

protocol CollectionViewModelProtocol: AnyObject {
    var dogs: [PetImage] {get}
    var cats: [PetImage] {get}
    var birds: [PetImage] {get}
    var reptiles: [PetImage] {get}
}

struct PetImage {
    var image: UIImage!
}

final class CollectionViewModel: CollectionViewModelProtocol {

    var dogs = [PetImage(image: UIImage(named: "Dog1")),
                PetImage(image: UIImage(named: "Dog2")),
                PetImage(image: UIImage(named: "Dog3")),
                PetImage(image: UIImage(named: "Dog4")),
                PetImage(image: UIImage(named: "Dog5")),
                PetImage(image: UIImage(named: "Dog6")),
                PetImage(image: UIImage(named: "Dog7")),
                PetImage(image: UIImage(named: "Dog8")),
                PetImage(image: UIImage(named: "Dog9")),
                PetImage(image: UIImage(named: "Dog10"))
    ]

    var cats = [PetImage(image: UIImage(named: "Cat1")),
                PetImage(image: UIImage(named: "Cat2")),
                PetImage(image: UIImage(named: "Cat3")),
                PetImage(image: UIImage(named: "Cat4")),
                PetImage(image: UIImage(named: "Cat5")),
                PetImage(image: UIImage(named: "Cat6")),
                PetImage(image: UIImage(named: "Cat7")),
                PetImage(image: UIImage(named: "Cat8")),
                PetImage(image: UIImage(named: "Cat9")),
                PetImage(image: UIImage(named: "Cat10"))
    ]

    var birds = [PetImage(image: UIImage(named: "Bird1")),
                 PetImage(image: UIImage(named: "Bird2")),
                 PetImage(image: UIImage(named: "Bird3")),
                 PetImage(image: UIImage(named: "Bird4")),
                 PetImage(image: UIImage(named: "Bird5")),
                 PetImage(image: UIImage(named: "Bird6")),
                 PetImage(image: UIImage(named: "Bird7")),
                 PetImage(image: UIImage(named: "Bird8")),
                 PetImage(image: UIImage(named: "Bird9")),
                 PetImage(image: UIImage(named: "Bird10"))
    ]

    var reptiles = [PetImage(image: UIImage(named: "Reptile1")),
                    PetImage(image: UIImage(named: "Reptile2")),
                    PetImage(image: UIImage(named: "Reptile3")),
                    PetImage(image: UIImage(named: "Reptile4")),
                    PetImage(image: UIImage(named: "Reptile5")),
                    PetImage(image: UIImage(named: "Reptile6")),
                    PetImage(image: UIImage(named: "Reptile7")),
                    PetImage(image: UIImage(named: "Reptile8")),
                    PetImage(image: UIImage(named: "Reptile9")),
                    PetImage(image: UIImage(named: "Reptile10"))
       ]
}
