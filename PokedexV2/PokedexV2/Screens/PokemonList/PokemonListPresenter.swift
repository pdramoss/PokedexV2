//

import Foundation

protocol PokemonListPresenter: class {
    var viewController: PokemonListPresenterOutput? { get }

    func interactor(didRetrieveData list: [NamedAPIResource])
    func interactor(didFailRetrieveData error: Error)
}

class PokemonListPresenterImplementation: PokemonListPresenter {
    weak var viewController: PokemonListPresenterOutput?

    func interactor(didRetrieveData list: [NamedAPIResource]) {
        viewController?.updateList(list)
    }

    func interactor(didFailRetrieveData error: Error) {

    }
}
