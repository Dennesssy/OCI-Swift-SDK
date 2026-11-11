import Foundation

// MARK: - ApiValidationDetails

public struct ApiValidationDetails: Codable, Sendable {

    public var name: String?
    public var result: ApiValidationDetailsResultEnum
    public var details: [ApiValidationDetail]?

    private enum CodingKeys: String, CodingKey {
        case name, result, details
    }

    public init(
                name: String? = nil,
                result: ApiValidationDetailsResultEnum,
                details: [ApiValidationDetail]? = nil
    ) {
        self.name = name
        self.result = result
        self.details = details
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiValidationDetails: CustomStringConvertible {
    public var description: String { "ApiValidationDetails()" }
}