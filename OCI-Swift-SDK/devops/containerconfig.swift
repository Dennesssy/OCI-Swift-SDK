import Foundation

// MARK: - containerconfig

public struct containerconfig: Codable, Sendable {

    public var jsonData: Data?
    public var containerConfigType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, containerConfigType
    }

    public init(
                jsonData: Data? = nil,
                containerConfigType: String? = nil
    ) {
        self.jsonData = jsonData
        self.containerConfigType = containerConfigType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension containerconfig: CustomStringConvertible {
    public var description: String { "containerconfig()" }
}