//
//  CollectionViewLayout.swift
//  PhotosOfPets
//
//  Created by Иван Тарасенко on 10.12.2022.
//

import UIKit

protocol LayoutDelegate: AnyObject {

    func collectionView( _ collectionView: UICollectionView, heightForImageAtIndexPath indexPath: IndexPath) -> CGSize
}

final class CollectionViewLayout: UICollectionViewFlowLayout {

    weak var layoutDelegate: LayoutDelegate?

    private let numberOfLines = 1
    private let cellPadding: CGFloat = 2
    private var cache: [UICollectionViewLayoutAttributes] = []
    private var contentWidth: CGFloat = 0
    private var contentHeight: CGFloat {
        guard let collectionView = collectionView else { return 0 }
        return collectionView.bounds.height
    }

    override var collectionViewContentSize: CGSize {
        return CGSize(width: contentWidth, height: contentHeight)
    }

    override func prepare() {

        guard cache.isEmpty, let collectionView = collectionView else { return }

        let columnWidth = contentWidth / CGFloat(numberOfLines)
        var xOffset: [CGFloat] = []
        var column = 0
        let yOffset: [CGFloat] = .init(repeating: 0, count: numberOfLines)

        for column in 0..<numberOfLines {
            xOffset.append(CGFloat(column) * columnWidth)
        }

        for item in 0..<collectionView.numberOfItems(inSection: 0) {
            let indexPath = IndexPath(item: item, section: 0)

            guard let imageSize = layoutDelegate?.collectionView(collectionView, heightForImageAtIndexPath: indexPath) else { return }

            let cellHeight = contentHeight
            var cellWidth = imageSize.width * cellHeight/imageSize.height
            cellWidth = cellPadding * 2 + cellWidth

            let frame = CGRect(x: xOffset[column], y: yOffset[column], width: cellWidth, height: cellHeight)
            let insetFrame = frame.insetBy(dx: cellPadding, dy: 0)
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)

            attributes.frame = insetFrame
            cache.append(attributes)
            contentWidth = max(contentWidth, frame.maxX)
            xOffset[column] = xOffset[column] + cellWidth
            column = column < (numberOfLines - 1) ? (column + 1) : 0
        }
    }

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        var visibleLayoutAttributes = [UICollectionViewLayoutAttributes]()

        for attributes in cache {
            if attributes.frame.intersects(rect) {
                visibleLayoutAttributes.append(attributes)
            }
        }
        return visibleLayoutAttributes
    }

    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return cache[indexPath.item]
    }
}
