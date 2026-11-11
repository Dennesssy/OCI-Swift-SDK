import Foundation

// MARK: - toolinput

public struct toolinput: Codable, Sendable {

    public var jsonData: Data?
    public var toolId: String?
    public var toolInputType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, toolId, toolInputType
    }

    public init(
                jsonData: Data? = nil,
                toolId: String? = nil,
                toolInputType: String? = nil
    ) {
        self.jsonData = jsonData
        self.toolId = toolId
        self.toolInputType = toolInputType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension toolinput: CustomStringConvertible {
    public var description: String { "toolinput()" }
}