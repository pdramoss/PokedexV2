//

import Foundation

protocol NetworkingPokemonAdapterProtocol {
    var service: NetworkingPokemonServiceProtocol { get set }

    func getPokemonList(_ offset: Int, _ limit: Int, completion: @escaping (Result<NamedAPIResourceList, Error>) -> Void)
    func getPokemonDetail(_ name: String, completion: @escaping (Result<Pokemon, Error>) -> Void)
}

protocol NetworkingPokemonServiceProtocol {
    func requestPokemonList(_ offset: Int, _ limit: Int, completion: @escaping NetworkingRouterCompletion)
    func requestPokemonDetail(_ name: String, completion: @escaping NetworkingRouterCompletion)
}
