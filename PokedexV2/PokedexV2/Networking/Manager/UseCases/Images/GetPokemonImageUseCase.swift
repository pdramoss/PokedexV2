//

import Foundation
import UIKit

public typealias GetImageDataClosure = (_ image: UIImage?) -> Void

final class GetPokemonImageUseCase: Injectable {
    @Inject private var adapter: NetworkingImageAdapter

    func execute(id: Int, completion: @escaping GetImageDataClosure) {
        adapter.getPokemon(id, completion: completion)
    }
}
