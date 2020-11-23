//

import Foundation

struct Stat: Codable {
    var id: Int
    var name: String
    var gameIndex: Int
    var isBattleOnly: Bool
    var affectingMoves: MoveStatAffectSets
    var affectingNatures: NatureStatAffectSets
    var characteristics: [APIResource]
    var moveDamageClass: NamedAPIResource
    var names: [Name]
}
