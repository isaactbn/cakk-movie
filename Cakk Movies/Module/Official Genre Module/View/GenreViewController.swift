//
//  GenreViewController.swift
//  Cakk Movies
//
//  Created by Isaac on 10/13/22.
//

import UIKit

protocol GenreView {
    var presenter: GenrePresenter? { get set }
    
    func update(with genres: [GenreBodyResponse])
    func update(with error: String)
}

class GenreViewController: UIViewController, GenreView {
    
    @IBOutlet weak var genreCollectionView: UICollectionView!
    
    var presenter: GenrePresenter?
    var listData = ["Drama", "Comedy", "Horror", "Action", "Animation", "Documenter", "Fantasy", "Science Fiction (Sci-Fi)", "Thriller", "Musical"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollection()
    }
    
    private func setupCollection() {
        genreCollectionView.delegate = self
        genreCollectionView.dataSource = self
        genreCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
    }
    
    func update(with genres: [GenreBodyResponse]) {
        
    }
    
    func update(with error: String) {
        
    }
}

extension GenreViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: ((collectionView.frame.width / 5) - 20), height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.titleLabel.text = listData[indexPath.row]
        
        return cell
    }
    
    
}
