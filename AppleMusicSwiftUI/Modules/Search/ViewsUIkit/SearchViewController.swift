//
//  SearchViewController.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 20/04/23.
//

import UIKit

final class SearchViewController: UIViewController {

    private var viewModel = SearchViewModel()

    // MARK: - Outlets

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.titleLabel
        label.font = .systemFont(ofSize: 34, weight: .bold)
        label.textColor = .black
        return label
    }()

    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = Constants.textFieldPlaceholder
        textField.layer.cornerRadius = 10
        textField.textAlignment = .left
        textField.backgroundColor = Colors.systemGrayKit
        return textField
    }()

    private lazy var collectionView: UICollectionView = {
        let layout = createLayout()

        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: layout
        )

        collectionView.dataSource = self
        collectionView.delegate = self

        collectionView.register(
            SearchViewCell.self,
            forCellWithReuseIdentifier: SearchViewCell.identifier
        )

        collectionView.register(
            HeaderSearchView.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: HeaderSearchView.identifier
        )

        return collectionView
    }()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupIcons()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(textField)
        view.addSubview(collectionView)
    }

    private func setupIcons() {
        if let image = Images.imageLeftIconInSearch {
            textField.setLeftIcon(image)
        }
    }

    private func setupLayout() {
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(view).offset(20)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
        }

        textField.snp.makeConstraints { make in
            make.left.equalTo(view).offset(20)
            make.right.equalTo(view).offset(-20)
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.height.equalTo(40)
        }

        collectionView.snp.makeConstraints { make in
            make.left.right.equalTo(view)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-80)
            make.top.equalTo(textField.snp.bottom).offset(20)
        }
    }

    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { _, _ in
            let headerSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .absolute(30)
            )

            let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: headerSize,
                elementKind: UICollectionView.elementKindSectionHeader,
                alignment: .top
            )

            let itemSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .absolute(130)
            )

            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(
                top: 10,
                leading: 10,
                bottom: 0,
                trailing: 0
            )

            let groupSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .absolute(130)
            )

            let group = NSCollectionLayoutGroup.horizontal(
                layoutSize: groupSize,
                subitem: item,
                count: 2
            )

            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets = NSDirectionalEdgeInsets(
                top: 0,
                leading: 10,
                bottom: 0,
                trailing: 20
            )

            section.boundarySupplementaryItems = [sectionHeader]
            return section
        }
    }
}

// MARK: - UICollectionViewDataSource

extension SearchViewController: UICollectionViewDelegate,
                                UICollectionViewDataSource,
                                UICollectionViewDelegateFlowLayout {

    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {

        viewModel.categoryData.count
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {

        if let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: SearchViewCell.identifier,
            for: indexPath
        ) as? SearchViewCell {

            cell.image.image = UIImage(named: viewModel.categoryData[indexPath.row].image)
            return cell
        }
        return UICollectionViewCell()
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        referenceSizeForHeaderInSection section: Int
    ) -> CGSize {

        return CGSize(width: collectionView.frame.width, height: 40)
    }

    func collectionView(
        _ collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        at indexPath: IndexPath
    ) -> UICollectionReusableView {

        guard let headerSectionSearch = collectionView.dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: HeaderSearchView.identifier,
            for: indexPath
        ) as? HeaderSearchView else {

            return UICollectionReusableView()
        }
        return headerSectionSearch
    }
}

fileprivate enum Constants {
    static let titleLabel = "Поиск"
    static let textFieldPlaceholder = "Ваша Медиатека"
}

fileprivate enum Images {
    static let imageLeftIconInSearch = UIImage(systemName: "magnifyingglass")
}
