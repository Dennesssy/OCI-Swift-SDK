import Foundation

// MARK: - DvpStackDetailsDvpStackTypeEnum

public enum DvpStackDetailsDvpStackTypeEnum: String, Codable, Sendable {
    case oracleRmStack = "ORACLE_RM_STACK"
}

public extension DvpStackDetailsDvpStackTypeEnum {
    static var allValues: [DvpStackDetailsDvpStackTypeEnum] { [.oracleRmStack] }
    static var allStringValues: [String] { ["ORACLE_RM_STACK"] }
    static func fromString(_ value: String) -> DvpStackDetailsDvpStackTypeEnum? { DvpStackDetailsDvpStackTypeEnum(rawValue: value) }
}