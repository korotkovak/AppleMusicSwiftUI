//
//  HeaderSearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 20/04/23.
//

import UIKit
import SnapKit

final class HeaderSearchView: UICollectionReusableView {

    static let identifier = Constants.identifier

    // MARK: - Outlets

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = Constants.title
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.textColor = Colors.blackKit
        return label
    }()

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: - Setup

    private func setupHierarchy() {
        addSubview(label)
    }

    private func setupLayout() {
        label.snp.makeConstraints { make in
            make.top.equalTo(10)
            make.left.equalTo(10)
            make.bottom.equalTo(self)
        }
    }
}

fileprivate enum Constants {
    static let identifier = "HeaderSearchView"
    static let title = "Поиск по категориям"
}
