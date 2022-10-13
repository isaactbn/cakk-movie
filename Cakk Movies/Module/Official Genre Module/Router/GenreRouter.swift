//
//  GenreRouter.swift
//  Cakk Movies
//
//  Created by Isaac on 10/13/22.
//

import Foundation
import UIKit

typealias EntryPoint = GenreView & UIViewController

protocol GenreRouter {
    var entry: EntryPoint? { get }
    
    static func start() -> GenreRouter
}

class GenreRouters: GenreRouter {
    var entry: EntryPoint?
    
    static func start() -> GenreRouter {
        let router = GenreRouters()
        
        // Assign VIP
        var view: GenreView = GenreViewController()
        var presenter: GenrePresenter = GenrePresentation()
        var interactor: GenreInteractor = GenreInteractors()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor
        
        router.entry = view as? EntryPoint
        
        return router
    }
    
}
