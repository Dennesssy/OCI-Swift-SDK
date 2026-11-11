import Foundation

// MARK: - SdkLanguageTypes

public struct SdkLanguageTypes: Codable, Sendable {

    public var name: String?
    public var version: String?
    public var displayName: String?
    public var description: String?
    public var parameters: [SdkLanguageOptionalParameters]?

    private enum CodingKeys: String, CodingKey {
        case name, version, displayName, description, parameters
    }

    public init(
                name: String? = nil,
                version: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                parameters: [SdkLanguageOptionalParameters]? = nil
    ) {
        self.name = name
        self.version = version
        self.displayName = displayName
        self.description = description
        self.parameters = parameters
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
