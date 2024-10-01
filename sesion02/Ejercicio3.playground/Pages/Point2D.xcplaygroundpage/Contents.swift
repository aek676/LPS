import Foundation

struct Point2D {
    var componentX: Int = 0
    var componentY: Int = 0
    init?(componentX: Int = 0, componentY: Int = 0) {
        if componentX < 0 || componentY < 0 {
            return nil
        }
        self.componentY = componentX
        self.componentY = componentY
    }
    func toString() -> String {
        return "(\(componentX),\(componentY))"
    }
}

if var punto5 = Point2D() {
    var punto6 = punto5
    punto5.componentY = -4
    punto6.componentX = -3
    print(punto5.toString())
    print(punto6.toString())
}
