import Foundation

// MARK: - WorkRequestSummaryOperationTypeEnum

public enum WorkRequestSummaryOperationTypeEnum: String, Codable, Sendable {
    case compartment = "DELETE_COMPARTMENT"
    case tagDefinition = "DELETE_TAG_DEFINITION"
}

public extension WorkRequestSummaryOperationTypeEnum {
    static var allValues: [WorkRequestSummaryOperationTypeEnum] { [.compartment, .tagDefinition] }
    static var allStringValues: [String] { ["DELETE_COMPARTMENT", "DELETE_TAG_DEFINITION"] }
    static func fromString(_ value: String) -> WorkRequestSummaryOperationTypeEnum? { WorkRequestSummaryOperationTypeEnum(rawValue: value) }
}