//

import Foundation

protocol PokemonListInteractor: class {
    var presenter: PokemonListPresenter? { get set }

    func getPokemonList(_ offset: Int, _ limit: Int)
}

class PokemonListInteractorImplemntation: PokemonListInteractor {
    var presenter: PokemonListPresenter?

    @Inject private var getPokemonListUseCase: GetPokemonListUseCase

    func getPokemonList(_ offset: Int, _ limit: Int) {
        getPokemonListUseCase.execute(offset: offset, limit: limit) { [weak self] (result) in
            switch result {
            case .success(let info):
                self?.presenter?.interactor(didRetrieveData: info.results)
            case .failure(let error):
                self?.presenter?.interactor(didFailRetrieveData: error)
            }
        }
    }
}
