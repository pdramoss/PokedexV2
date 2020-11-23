//

import Foundation

protocol PokemonDetailPresenter: class {
    var viewController: PokemonDetailPresenterOutput? { get }

    func interactor(didRetrieveData pokemon: Pokemon)
    func interactor(didFailRetrieveData error: Error)
}

class PokemonDetailPresenterImplementation: PokemonDetailPresenter {
    weak var viewController: PokemonDetailPresenterOutput?

    func interactor(didRetrieveData pokemon: Pokemon) {
        viewController?.setupDetail(pokemon: pokemon)
    }

    func interactor(didFailRetrieveData error: Error) {
        
    }
}
