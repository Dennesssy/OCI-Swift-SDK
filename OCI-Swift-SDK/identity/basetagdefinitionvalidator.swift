import Foundation

// MARK: - basetagdefinitionvalidator

public struct basetagdefinitionvalidator: Codable, Sendable {

    public var jsonData: Data?
    public var validatorType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, validatorType
    }

    public init(
                jsonData: Data? = nil,
                validatorType: String? = nil
    ) {
        self.jsonData = jsonData
        self.validatorType = validatorType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension basetagdefinitionvalidator: CustomStringConvertible {
    public var description: String { "basetagdefinitionvalidator()" }
}