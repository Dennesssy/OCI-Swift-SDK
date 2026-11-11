import Foundation

// MARK: - NetworkBondingInterfaceEnumEnum

public enum NetworkBondingInterfaceEnumEnum: String, Codable, Sendable {
    case btbond1 = "BTBOND1"
    case btbond2 = "BTBOND2"
    case btbond3 = "BTBOND3"
    case btbond4 = "BTBOND4"
    case btbond5 = "BTBOND5"
    case btbond6 = "BTBOND6"
}

public extension NetworkBondingInterfaceEnumEnum {
    static var allValues: [NetworkBondingInterfaceEnumEnum] { [.btbond1, .btbond2, .btbond3, .btbond4, .btbond5, .btbond6] }
    static var allStringValues: [String] { ["BTBOND1", "BTBOND2", "BTBOND3", "BTBOND4", "BTBOND5", "BTBOND6"] }
    static func fromString(_ value: String) -> NetworkBondingInterfaceEnumEnum? { NetworkBondingInterfaceEnumEnum(rawValue: value) }
}