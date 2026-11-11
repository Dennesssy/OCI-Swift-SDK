import Foundation

// MARK: - toolconfig

public struct toolconfig: Codable, Sendable {

    public var jsonData: Data?
    public var toolConfigType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, toolConfigType
    }

    public init(
                jsonData: Data? = nil,
                toolConfigType: String? = nil
    ) {
        self.jsonData = jsonData
        self.toolConfigType = toolConfigType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension toolconfig: CustomStringConvertible {
    public var description: String { "toolconfig()" }
}