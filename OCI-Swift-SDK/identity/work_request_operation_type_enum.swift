import Foundation

// MARK: - WorkRequestOperationTypeEnum

public enum WorkRequestOperationTypeEnum: String, Codable, Sendable {
    case compartment = "DELETE_COMPARTMENT"
    case tagDefinition = "DELETE_TAG_DEFINITION"
}

public extension WorkRequestOperationTypeEnum {
    static var allValues: [WorkRequestOperationTypeEnum] { [.compartment, .tagDefinition] }
    static var allStringValues: [String] { ["DELETE_COMPARTMENT", "DELETE_TAG_DEFINITION"] }
    static func fromString(_ value: String) -> WorkRequestOperationTypeEnum? { WorkRequestOperationTypeEnum(rawValue: value) }
}