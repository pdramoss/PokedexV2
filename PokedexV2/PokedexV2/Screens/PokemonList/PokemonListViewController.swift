//

import UIKit

protocol PokemonListPresenterOutput: class {
    var interactor: PokemonListInteractor? { get set }
    var router: PokemonListRouter? { get set }

    func updateList(_ list: [NamedAPIResource])
}

class PokemonListViewController: UIViewController {
    var interactor: PokemonListInteractor?
    var router: PokemonListRouter?
    private var list: [NamedAPIResource] = [NamedAPIResource]()

    private var limit: Int = 100
    private var offset: Int = 0

    @IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        PokemonListConfigurator.setupModule(self)
        interactor?.getPokemonList(offset, limit)
    }
}

extension PokemonListViewController: PokemonListPresenterOutput {
    func updateList(_ list: [NamedAPIResource]) {
        Logger.info("Number \(list.count)")
        self.list = list
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

extension PokemonListViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PokemionCell", for: indexPath) as? PokemonTableViewCell
        cell?.setup(data: list[indexPath.row])
        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = list[indexPath.row].name
        router?.routeToDetail(name)
    }
}
