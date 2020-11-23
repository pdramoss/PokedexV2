//

import Foundation

final class GetItemGen3ImageUseCase: Injectable {
    @Inject private var adapter: NetworkingImageAdapter

    func execute(name: String, completion: @escaping GetImageDataClosure) {
        adapter.getItemGen3(name, completion: completion)
    }
}
