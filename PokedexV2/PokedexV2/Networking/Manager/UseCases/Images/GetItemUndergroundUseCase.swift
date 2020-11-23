//

import Foundation

final class GetItemUndergroundImageUseCase: Injectable {
    @Inject private var adapter: NetworkingImageAdapter

    func execute(name: String, completion: @escaping GetImageDataClosure) {
        adapter.getItemUnderground(name, completion: completion)
    }
}
