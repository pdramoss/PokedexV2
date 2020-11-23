//

import Foundation

enum NetworkingPokemonAPI {
    case getPokemonList(_ offset: Int, _ limit: Int)
    case getPokemonDetail(_ name: String)
}

extension NetworkingPokemonAPI: EndPointType {
    var isBaseImage: Bool {
        return false
    }

    var path: String {
        switch self {
        case .getPokemonList:
            return "pokemon/"
        case .getPokemonDetail(let name):
            return "pokemon/\(name)"
        }
    }

    var parameters: Parameters? {
        switch self {
        case .getPokemonList(let offset, let limit):
            return ["offset" : offset, "limit" : limit]
        default:
            return nil
        }
    }
}
