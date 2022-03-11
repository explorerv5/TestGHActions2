//
//  Model.swift
//  TestGHActions1
//
//  Created by githubactions on 22.02.2022.
//

import Foundation

protocol ModelOutputProtocol {
    func resultChanged(result: String)
}

protocol ModelInputProtocol {
    func action()
}
class Model: ModelInputProtocol {
    private static let counterInitialValue = 0
    private var counter = counterInitialValue
    var input: ModelInputProtocol?
    var output: ModelOutputProtocol?
    func action() {
        counter += 1
        let result = String(counter)
        output?.resultChanged(result: result)
    }
}
