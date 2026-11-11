import Foundation

// MARK: - DelegatedResourceAccessRequesterTypeEnum

public enum DelegatedResourceAccessRequesterTypeEnum: String, Codable, Sendable {
    case `operator` = "OPERATOR"
    case customer = "CUSTOMER"
    case system = "SYSTEM"
}

public extension DelegatedResourceAccessRequesterTypeEnum {
    static var allValues: [DelegatedResourceAccessRequesterTypeEnum] { [.`operator`, .customer, .system] }
    static var allStringValues: [String] { ["OPERATOR", "CUSTOMER", "SYSTEM"] }
    static func fromString(_ value: String) -> DelegatedResourceAccessRequesterTypeEnum? { DelegatedResourceAccessRequesterTypeEnum(rawValue: value) }
}