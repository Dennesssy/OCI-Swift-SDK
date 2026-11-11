import Foundation

// MARK: - ServiceProviderActionProperties

public struct ServiceProviderActionProperties: Codable, Sendable {

    public var name: String?
    public var value: String?

    private enum CodingKeys: String, CodingKey {
        case name, value
    }

    public init(
                name: String? = nil,
                value: String? = nil
    ) {
        self.name = name
        self.value = value
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServiceProviderActionProperties: CustomStringConvertible {
    public var description: String { "ServiceProviderActionProperties()" }
}