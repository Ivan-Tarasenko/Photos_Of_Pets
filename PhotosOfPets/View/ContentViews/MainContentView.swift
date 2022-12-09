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
