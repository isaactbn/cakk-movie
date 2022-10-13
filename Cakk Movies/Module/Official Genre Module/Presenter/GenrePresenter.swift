//
//  GenrePresenter.swift
//  Cakk Movies
//
//  Created by Isaac on 10/13/22.
//

import Foundation

protocol GenrePresenter {
    var router: GenreRouter? { get set }
    var interactor: GenreInteractor? { get set }
    var view: GenreView? { get set }
    
    func onGetGenreList(with result: Result<[GenreBodyResponse], Error>)
}

class GenrePresentation: GenrePresenter {
    var router: GenreRouter?
    
    var interactor: GenreInteractor?
     
    var view: GenreView?
    
    func onGetGenreList(with result: Result<[GenreBodyResponse], Error>) {
        
    }
}
