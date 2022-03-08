//
//  FindViewController.swift
//  HW16
//
//  Created by Александр Петрович on 06.03.2022.
//

import UIKit

class FindViewController: UIViewController {
    
    var collectionView: UICollectionView!
    let data = FindViewItem.findViewItem
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        
        self.navigationItem.searchController = search
        self.navigationItem.hidesSearchBarWhenScrolling = false
        setupCollectionView()
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: setupCompositionLayout())
        
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        collectionView.register(FindViewControllerCell.self, forCellWithReuseIdentifier: FindViewControllerCell.reuseId)
        
        collectionView.register(FindViewHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: FindViewHeader.reuseId)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        view.addSubview(collectionView)
    }
    
    func setupCompositionLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout  { (sectionIndex, layoutEnvironment) -> NSCollectionLayoutSection? in
            return self.setupVerticalViewSection()
        }
        return layout
    }
    
    
    
    func setupVerticalViewSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10)
        
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                               heightDimension: .fractionalWidth(0.3))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
        group.contentInsets = NSDirectionalEdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0)
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets.init(top: 0, leading: 10, bottom: 0, trailing: 0)
        
        let header = createSectionsHeader()
        section.boundarySupplementaryItems = [header]
        return section
    }
    
    func createSectionsHeader() -> NSCollectionLayoutBoundarySupplementaryItem {
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(SectionHeaderConstants.headerSizeWidth),
                                                heightDimension: .estimated(SectionHeaderConstants.headerSizeHeight))
        return NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize,
                                                           elementKind: UICollectionView.elementKindSectionHeader,
                                                           alignment: .top)
    }
    
}


extension FindViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FindViewControllerCell.reuseId, for: indexPath) as! FindViewControllerCell
        cell.icon.image = UIImage(named: data[indexPath.row].image)
        cell.title.text = data[indexPath.row].title
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header: FindViewHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: FindViewHeader.reuseId, for: indexPath) as! FindViewHeader
        header.title.text = "Поиск по категориям"
        return header
        
    }
}


extension FindViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = CategoryViewUIK(item: data[indexPath.row].categoryViewItem)
                vc.title = data[indexPath.row].title
                navigationController?.navigationBar.tintColor = .systemRed
                navigationController?.navigationBar.topItem?.backButtonTitle = ""
        
                navigationController?.pushViewController(vc, animated: true)
        
    }
}

extension FindViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text ?? "")
    }
}

enum SectionHeaderConstants {
    static let headerSizeWidth = 1.0
    static let headerSizeHeight = 30.0
}
