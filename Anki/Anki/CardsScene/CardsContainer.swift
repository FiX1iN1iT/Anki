//
//  CardsContainer.swift
//  Anki
//
//  Created by user on 09.01.2024.
//  
//

import UIKit

final class CardsContainer {
    let input: CardsModuleInput
    let viewController: UIViewController
    private(set) weak var router: CardsRouterInput!
    
    class func assemble(with context: CardsContext) -> CardsContainer {
        let router = CardsRouter()
        let interactor = CardsInteractor()
        let presenter = CardsPresenter(router: router, interactor: interactor)
        let viewController = CardsViewController(output: presenter)
        
        presenter.view = viewController
        presenter.moduleOutput = context.moduleOutput
        
        interactor.output = presenter
        
        return CardsContainer(view: viewController, input: presenter, router: router)
    }
    
    private init(view: UIViewController, input: CardsModuleInput, router: CardsRouterInput) {
        self.viewController = view
        self.input = input
        self.router = router
    }
}

struct CardsContext {
    weak var moduleOutput: CardsModuleOutput?
}
