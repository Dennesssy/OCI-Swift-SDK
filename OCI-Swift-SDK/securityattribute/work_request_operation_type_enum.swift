import Foundation

// MARK: - WorkRequestOperationTypeEnum

public enum WorkRequestOperationTypeEnum: String, Codable, Sendable {
    case deleteSecurityAttributeDefinition = "DELETE_SECURITY_ATTRIBUTE_DEFINITION"
    case deleteNonEmptySecurityAttributeNamespace = "DELETE_NON_EMPTY_SECURITY_ATTRIBUTE_NAMESPACE"
    case bulkDeleteSecurityAttributes = "BULK_DELETE_SECURITY_ATTRIBUTES"
    case bulkEditOfSecurityAttributes = "BULK_EDIT_OF_SECURITY_ATTRIBUTES"
}

public extension WorkRequestOperationTypeEnum {
    static var allValues: [WorkRequestOperationTypeEnum] { [.deleteSecurityAttributeDefinition, .deleteNonEmptySecurityAttributeNamespace, .bulkDeleteSecurityAttributes, .bulkEditOfSecurityAttributes] }
    static var allStringValues: [String] { ["DELETE_SECURITY_ATTRIBUTE_DEFINITION", "DELETE_NON_EMPTY_SECURITY_ATTRIBUTE_NAMESPACE", "BULK_DELETE_SECURITY_ATTRIBUTES", "BULK_EDIT_OF_SECURITY_ATTRIBUTES"] }
    static func fromString(_ value: String) -> WorkRequestOperationTypeEnum? { WorkRequestOperationTypeEnum(rawValue: value) }
}