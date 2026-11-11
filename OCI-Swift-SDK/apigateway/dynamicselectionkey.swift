import Foundation

// MARK: - dynamicselectionkey

public struct dynamicselectionkey: Codable, Sendable {

    public var jsonData: Data?
    public var isDefault: Bool?
    public var name: String?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, isDefault, name, type
    }

    public init(
                jsonData: Data? = nil,
                isDefault: Bool? = nil,
                name: String? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.isDefault = isDefault
        self.name = name
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension dynamicselectionkey: CustomStringConvertible {
    public var description: String { "dynamicselectionkey()" }
}