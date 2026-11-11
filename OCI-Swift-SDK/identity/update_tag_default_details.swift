import Foundation

// MARK: - UpdateTagDefaultDetails

public struct UpdateTagDefaultDetails: Codable, Sendable {

    public var value: String?
    public var isRequired: Bool?

    private enum CodingKeys: String, CodingKey {
        case value, isRequired
    }

    public init(
                value: String? = nil,
                isRequired: Bool? = nil
    ) {
        self.value = value
        self.isRequired = isRequired
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateTagDefaultDetails: CustomStringConvertible {
    public var description: String { "UpdateTagDefaultDetails()" }
}