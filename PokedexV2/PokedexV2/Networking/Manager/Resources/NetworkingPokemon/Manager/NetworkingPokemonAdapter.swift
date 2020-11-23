//

import Foundation

class NetworkingPokemonAdapter: DefaultNetworkManager, NetworkingPokemonAdapterProtocol, Injectable {
    var service: NetworkingPokemonServiceProtocol

    init(_ service: NetworkingPokemonServiceProtocol = NetworkingPokemonService(NetworkingRouter<NetworkingPokemonAPI>())) {
        self.service = service
    }

    func getPokemonList(_ offset: Int, _ limit: Int, completion: @escaping (Result<NamedAPIResourceList, Error>) -> Void) {
        service.requestPokemonList(offset, limit) { [weak self] (data, response, error) in
            error.map { completion(.failure($0)) }
            guard let self = self else {
                completion(.failure(ErrorNetworking.failed))
                return
            }
            response.map {
                switch self.handleNetwork($0) {
                case .success:
                    do {
                        let content: NamedAPIResourceList = try self.load(data: data)
                        completion(.success(content))
                    } catch {
                        completion(.failure(error))
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }

    func getPokemonDetail(_ name: String, completion: @escaping (Result<Pokemon, Error>) -> Void) {
        service.requestPokemonDetail(name) { [weak self] (data, response, error) in
            error.map { completion(.failure($0)) }
            guard let self = self else {
                completion(.failure(ErrorNetworking.failed))
                return
            }
            response.map {
                switch self.handleNetwork($0) {
                case .success:
                    do {
                        let content: Pokemon = try self.load(data: data)
                        completion(.success(content))
                    } catch {
                        completion(.failure(error))
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }
}
