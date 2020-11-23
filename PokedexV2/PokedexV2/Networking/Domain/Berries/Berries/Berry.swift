//

import Foundation

struct Berry: Codable {
    var id: Int
    var name: String
    var growthTime: Int
    var maxHarvest: Int
    var naturalGiftPower: Int
    var size: Int
    var smoothness: Int
    var soilDryness: Int
    var firmness: NamedAPIResource
    var flavors: BerryFlavorMap
    var item: NamedAPIResource
    var naturalGiftType: NamedAPIResource
}
