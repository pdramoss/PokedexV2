//

import Foundation

typealias GetPokemonDetailDataClosure = (_ result: Result<Pokemon, Error>) -> Void

final class GetPokemonDetailUseCase: Injectable {
    @Inject private var adapter: NetworkingPokemonAdapter

    func execute(name: String, completion: @escaping GetPokemonDetailDataClosure) {
        adapter.getPokemonDetail(name, completion: completion)
    }
}
