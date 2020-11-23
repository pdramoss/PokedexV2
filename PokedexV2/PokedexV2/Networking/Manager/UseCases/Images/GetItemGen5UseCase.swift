//

import Foundation

final class GetItemGen5ImageUseCase: Injectable {
    @Inject private var adapter: NetworkingImageAdapter

    func execute(name: String, completion: @escaping GetImageDataClosure) {
        adapter.getItemGen3(name, completion: completion)
    }
}
