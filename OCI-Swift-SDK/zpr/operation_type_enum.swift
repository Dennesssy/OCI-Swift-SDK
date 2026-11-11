import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createZprPolicy = "CREATE_ZPR_POLICY"
    case updateZprPolicy = "UPDATE_ZPR_POLICY"
    case deleteZprPolicy = "DELETE_ZPR_POLICY"
    case createZprConfiguration = "CREATE_ZPR_CONFIGURATION"
    case updateZprConfiguration = "UPDATE_ZPR_CONFIGURATION"
    case deleteZprConfiguration = "DELETE_ZPR_CONFIGURATION"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createZprPolicy, .updateZprPolicy, .deleteZprPolicy, .createZprConfiguration, .updateZprConfiguration, .deleteZprConfiguration] }
    static var allStringValues: [String] { ["CREATE_ZPR_POLICY", "UPDATE_ZPR_POLICY", "DELETE_ZPR_POLICY", "CREATE_ZPR_CONFIGURATION", "UPDATE_ZPR_CONFIGURATION", "DELETE_ZPR_CONFIGURATION"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}