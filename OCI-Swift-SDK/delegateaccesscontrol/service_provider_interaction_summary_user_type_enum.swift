import Foundation

// MARK: - ServiceProviderInteractionSummaryUserTypeEnum

public enum ServiceProviderInteractionSummaryUserTypeEnum: String, Codable, Sendable {
    case customer = "CUSTOMER"
    case `operator` = "OPERATOR"
}

public extension ServiceProviderInteractionSummaryUserTypeEnum {
    static var allValues: [ServiceProviderInteractionSummaryUserTypeEnum] { [.customer, .`operator`] }
    static var allStringValues: [String] { ["CUSTOMER", "OPERATOR"] }
    static func fromString(_ value: String) -> ServiceProviderInteractionSummaryUserTypeEnum? { ServiceProviderInteractionSummaryUserTypeEnum(rawValue: value) }
}