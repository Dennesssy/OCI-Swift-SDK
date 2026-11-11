import Foundation

// MARK: - SdkLanguageOptionalParametersAllowedValue

public struct SdkLanguageOptionalParametersAllowedValue: Codable, Sendable {

    public var name: String?
    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case name, description
    }

    public init(
                name: String? = nil,
                description: String? = nil
    ) {
        self.name = name
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
