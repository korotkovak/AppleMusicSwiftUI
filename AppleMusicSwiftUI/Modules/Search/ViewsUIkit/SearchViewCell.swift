//
//  SearchViewCell.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 20/04/23.
//

import UIKit

final class SearchViewCell: UICollectionViewCell {

    static let identifier = Constants.identifier

    // MARK: - Outlets
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.contentMode = .scaleAspectFill
        return image
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
        contentView.addSubview(image)
    }

    private func setupLayout() {
        image.snp.makeConstraints { make in
            make.left.equalTo(contentView.snp.left)
            make.right.equalTo(contentView.snp.right)
            make.top.equalTo(contentView.snp.top)
            make.bottom.equalTo(contentView.snp.bottom)
        }
    }
}

fileprivate enum Constants {
    static let identifier = "SearchViewCell"
}
