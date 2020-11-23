//

import Foundation

protocol Injectable {}

@propertyWrapper
struct Inject<T: Injectable> {
    let wrappedValue: T

    init() {
        wrappedValue = Resolver.shared.resolve()
    }
}

class Resolver {
    private var storage = [String: Injectable]()

    static let shared = Resolver()
    private init() {}

    func add<T: Injectable>(_ injectable: T) {
        let key = String(reflecting: injectable)
        storage[key] = injectable
    }
    
    func resolve<T: Injectable>() -> T {
        let key = String(reflecting: T.self)

        guard let injectable = storage[key] as? T else {
            fatalError("\(key) has not been added as an injectable object.")
        }

        return injectable
    }
}

class DependencyUseCaseManager {
    private let getPokemonImageUseCase: GetPokemonImageUseCase
    private let getPokemonListUseCase: GetPokemonListUseCase
    private let getPokemonDetailUseCase: GetPokemonDetailUseCase

    init() {
        self.getPokemonImageUseCase = GetPokemonImageUseCase()
        self.getPokemonListUseCase = GetPokemonListUseCase()
        self.getPokemonDetailUseCase = GetPokemonDetailUseCase()
        addDependencies()
    }

    private func addDependencies() {
        let resolver = Resolver.shared
        resolver.add(getPokemonImageUseCase)
        resolver.add(getPokemonListUseCase)
        resolver.add(getPokemonDetailUseCase)
    }
}

class DependencyAdapterManager {
    private let networkingPokemonAdapter: NetworkingPokemonAdapter
    private let networkingImageAdapter: NetworkingImageAdapter

    init() {
        self.networkingPokemonAdapter = NetworkingPokemonAdapter()
        self.networkingImageAdapter = NetworkingImageAdapter()
        addDependencies()
    }

    private func addDependencies() {
        let resolver = Resolver.shared
        resolver.add(networkingPokemonAdapter)
        resolver.add(networkingImageAdapter)
    }
}
