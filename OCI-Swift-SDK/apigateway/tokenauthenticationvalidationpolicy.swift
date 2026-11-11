import Foundation

// MARK: - tokenauthenticationvalidationpolicy

public struct tokenauthenticationvalidationpolicy: Codable, Sendable {

    public var jsonData: Data?
    public var additionalValidationPolicy: AdditionalValidationPolicy?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, additionalValidationPolicy, type
    }

    public init(
                jsonData: Data? = nil,
                additionalValidationPolicy: AdditionalValidationPolicy? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.additionalValidationPolicy = additionalValidationPolicy
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension tokenauthenticationvalidationpolicy: CustomStringConvertible {
    public var description: String { "tokenauthenticationvalidationpolicy()" }
}