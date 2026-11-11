import Foundation

// MARK: - contentvalidation

public struct contentvalidation: Codable, Sendable {

    public var jsonData: Data?
    public var validationType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, validationType
    }

    public init(
                jsonData: Data? = nil,
                validationType: String? = nil
    ) {
        self.jsonData = jsonData
        self.validationType = validationType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension contentvalidation: CustomStringConvertible {
    public var description: String { "contentvalidation()" }
}