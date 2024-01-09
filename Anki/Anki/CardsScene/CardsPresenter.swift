//
//  CardsPresenter.swift
//  Anki
//
//  Created by user on 09.01.2024.
//  
//

import Foundation

final class CardsPresenter {
    weak var view: CardsViewInput?
    weak var moduleOutput: CardsModuleOutput?
    
    private let router: CardsRouterInput
    private let interactor: CardsInteractorInput
    
    init(router: CardsRouterInput, interactor: CardsInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
}

extension CardsPresenter: CardsModuleInput {
}

extension CardsPresenter: CardsViewOutput {
}

extension CardsPresenter: CardsInteractorOutput {
}
