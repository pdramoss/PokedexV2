//

import Foundation

final class GetItemImageUseCase: Injectable {
    @Inject private var adapter: NetworkingImageAdapter

    func execute(name: String, completion: @escaping GetImageDataClosure) {
        adapter.getItem(name, completion: completion)
    }
}
