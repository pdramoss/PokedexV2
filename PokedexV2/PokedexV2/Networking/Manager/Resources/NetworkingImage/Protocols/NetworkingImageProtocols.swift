//

import Combine
import Foundation
import UIKit

protocol NetworkingImageAdapterProtocol {
    var service: NetworkingImageServiceProtocol { get set }
    
    func getPokemon(_ id: Int, completion: @escaping (_ image: UIImage?) -> Void)
    func getItem(_ name: String, completion: @escaping (_ image: UIImage?) -> Void)
    func getItemBerry(_ name: String, completion: @escaping (_ image: UIImage?) -> Void)
    func getItemDreamWorld(_ name: String, completion: @escaping (_ image: UIImage?) -> Void)
    func getItemGen3(_ name: String, completion: @escaping (_ image: UIImage?) -> Void)
    func getItemGen5(_ name: String, completion: @escaping (_ image: UIImage?) -> Void)
    func getItemUnderground(_ name: String, completion: @escaping (_ image: UIImage?) -> Void)
}

protocol NetworkingImageServiceProtocol {
    func requestPokemon(_ id: Int) -> UIImage?
    func requestItem(_ name: String) -> UIImage?
    func requestItemBerry(_ name: String) -> UIImage?
    func requestItemDreamWorld(_ name: String) -> UIImage?
    func requestItemGen3(_ name: String) -> UIImage?
    func requestItemGen5(_ name: String) -> UIImage?
    func requestItemUnderground(_ name: String) -> UIImage?
}
