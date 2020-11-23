//

import Foundation

class PokemonListConfigurator {
    static func setupModule(_ viewController: PokemonListViewController) {
        let router = PokemonListRouterImplementation()
        let interactor = PokemonListInteractorImplemntation()
        let presenter = PokemonListPresenterImplementation()

        viewController.router = router
        viewController.interactor = interactor

        interactor.presenter = presenter

        presenter.viewController = viewController

        router.navigationController = viewController.navigationController
    }
}
