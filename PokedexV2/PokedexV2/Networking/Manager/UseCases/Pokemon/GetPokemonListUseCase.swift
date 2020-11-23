//

import Foundation

typealias GetPokemonListDataClosure = (_ result: Result<NamedAPIResourceList, Error>) -> Void

final class GetPokemonListUseCase: Injectable {
    @Inject private var adapter: NetworkingPokemonAdapter

    func execute(offset: Int, limit: Int, completion: @escaping GetPokemonListDataClosure) {
        adapter.getPokemonList(offset, limit, completion: completion)
    }
}
