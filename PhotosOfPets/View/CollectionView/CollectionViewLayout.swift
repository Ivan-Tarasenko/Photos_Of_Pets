//
//  CollectionViewLayout.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 10.12.2022.
//

import UIKit

final class CollectionViewLayout: UICollectionViewFlowLayout {

     override init() {
         super.init()
         setup()
     }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

     func setup() {

         // setting up some inherited values

         let width = UIScreen.main.bounds.width / 2

         self.itemSize = CGSize(width: width - 30, height: width - 30)

         self.sectionInset = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)

         self.minimumInteritemSpacing = 15

         self.minimumLineSpacing = 15

         self.scrollDirection = .horizontal

     }

}

// MARK: - PreviewProvider
#if DEBUG
#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
struct Representable: UIViewRepresentable {
    let view: UIView

    func makeUIView(context: Context) -> UIView {
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}


@available(iOS 13.0, *)
struct DicesViewRepresentablePreview: PreviewProvider {
    static var previews: some View {
        Representable(view: MainContentView(frame: .zero))

            .frame(
                width: UIScreen.main.bounds.width,
                height: UIScreen.main.bounds.height,
                alignment: .center
            )
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.light)
    }
}
#endif
#endif

