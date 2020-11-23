//

import Foundation

final class GetItemDreamWorldImageUseCase: Injectable {
    @Inject private var adapter: NetworkingImageAdapter

    func execute(name: String, completion: @escaping GetImageDataClosure) {
        adapter.getItemDreamWorld(name, completion: completion)
    }
}
