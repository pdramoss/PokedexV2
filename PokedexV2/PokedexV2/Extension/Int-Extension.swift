//

import Foundation

extension Int {
    func numberWithZeros(number: Int = 4) -> String {
        return String(format: "%0\(number)d", self)
    }
}
