//
//  CardsViewController.swift
//  Anki
//
//  Created by user on 09.01.2024.
//  
//

import UIKit

final class CardsViewController: UIViewController {
    private let output: CardsViewOutput

    init(output: CardsViewOutput) {
        self.output = output

        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
    }
}

extension CardsViewController: CardsViewInput {
}
