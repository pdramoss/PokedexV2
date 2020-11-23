//

import Foundation

protocol PokemonDetailInteractor: class {
    var presenter: PokemonDetailPresenter? { get set }
    var name: String { get set }

    func getDetail()
}

class PokemonDetailInteractorImplemntation: PokemonDetailInteractor {
    var presenter: PokemonDetailPresenter?
    var name: String = String()

    @Inject private var getPokemonDetailUseCase: GetPokemonDetailUseCase

    func getDetail() {
        getPokemonDetailUseCase.execute(name: name) { [weak self] (result) in
            switch result {
            case .success(let pokemon):
                self?.presenter?.interactor(didRetrieveData: pokemon)
            case .failure(let error):
                self?.presenter?.interactor(didFailRetrieveData: error)
            }
        }
    }
}
