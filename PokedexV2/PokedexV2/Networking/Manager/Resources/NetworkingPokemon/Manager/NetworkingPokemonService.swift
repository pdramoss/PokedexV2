//

import Foundation

class NetworkingPokemonService<Router: NetworkingRouterProtocol>: NetworkingBaseRouterProtocol, NetworkingPokemonServiceProtocol where Router.EndPoint == NetworkingPokemonAPI {
    var router: Router

    init(_ router: Router) {
        self.router = router
    }

    func requestPokemonList(_ offset: Int, _ limit: Int, completion: @escaping NetworkingRouterCompletion) {
        router.request(.getPokemonList(offset, limit)) { completion($0, $1, $2) }
    }

    func requestPokemonDetail(_ name: String, completion: @escaping NetworkingRouterCompletion) {
        router.request(.getPokemonDetail(name)) { completion($0, $1, $2) }
    }
}
