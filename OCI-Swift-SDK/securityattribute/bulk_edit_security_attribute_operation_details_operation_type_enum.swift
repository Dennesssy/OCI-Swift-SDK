import Foundation

// MARK: - BulkEditSecurityAttributeOperationDetailsOperationTypeEnum

public enum BulkEditSecurityAttributeOperationDetailsOperationTypeEnum: String, Codable, Sendable {
    case addWhereAbsent = "ADD_WHERE_ABSENT"
    case setWherePresent = "SET_WHERE_PRESENT"
    case addOrSet = "ADD_OR_SET"
    case remove = "REMOVE"
}

public extension BulkEditSecurityAttributeOperationDetailsOperationTypeEnum {
    static var allValues: [BulkEditSecurityAttributeOperationDetailsOperationTypeEnum] { [.addWhereAbsent, .setWherePresent, .addOrSet, .remove] }
    static var allStringValues: [String] { ["ADD_WHERE_ABSENT", "SET_WHERE_PRESENT", "ADD_OR_SET", "REMOVE"] }
    static func fromString(_ value: String) -> BulkEditSecurityAttributeOperationDetailsOperationTypeEnum? { BulkEditSecurityAttributeOperationDetailsOperationTypeEnum(rawValue: value) }
}