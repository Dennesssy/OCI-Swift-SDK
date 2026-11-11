import Foundation

// MARK: - responsecachelookuppolicy

public struct responsecachelookuppolicy: Codable, Sendable {

    public var jsonData: Data?
    public var isEnabled: Bool?
    public var isPrivateCachingEnabled: Bool?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, isEnabled, isPrivateCachingEnabled, type
    }

    public init(
                jsonData: Data? = nil,
                isEnabled: Bool? = nil,
                isPrivateCachingEnabled: Bool? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.isEnabled = isEnabled
        self.isPrivateCachingEnabled = isPrivateCachingEnabled
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension responsecachelookuppolicy: CustomStringConvertible {
    public var description: String { "responsecachelookuppolicy()" }
}