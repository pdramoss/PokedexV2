//

import Foundation

final class GetItemBerryImageUseCase: Injectable {
    @Inject private var adapter: NetworkingImageAdapter

    func execute(name: String, completion: @escaping GetImageDataClosure) {
        adapter.getItemBerry(name, completion: completion)
    }
}
