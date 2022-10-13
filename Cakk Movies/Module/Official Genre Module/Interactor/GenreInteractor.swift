//
//  GenreInteractor.swift
//  Cakk Movies
//
//  Created by Isaac on 10/13/22.
//

import Foundation

protocol GenreInteractor {
    var presenter: GenrePresenter? { get set }
    
    func getGenreList()
}

class GenreInteractors: GenreInteractor {
    var presenter: GenrePresenter?
    
    func getGenreList() {
        
    }
}
