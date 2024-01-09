//
//  CardsProtocols.swift
//  Anki
//
//  Created by user on 09.01.2024.
//  
//

import Foundation

protocol CardsModuleInput {
    var moduleOutput: CardsModuleOutput? { get }
}

protocol CardsModuleOutput: AnyObject {
}

protocol CardsViewInput: AnyObject {
}

protocol CardsViewOutput: AnyObject {
}

protocol CardsInteractorInput: AnyObject {
}

protocol CardsInteractorOutput: AnyObject {
}

protocol CardsRouterInput: AnyObject {
}
