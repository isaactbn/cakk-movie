//
//  BaseView.swift
//  Cakk Movies
//
//  Created by Isaac on 10/20/22.
//

import Foundation

protocol BaseView {
    func showError(msg: String)
    func onLoading()
    func onFinishLoading()
}
