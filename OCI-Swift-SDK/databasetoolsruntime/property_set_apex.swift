import Foundation

// MARK: - PropertySetApex

public struct PropertySetApex: Codable, Sendable {

    public var isMutable: Bool?
    public var version: String?
    public var userKey: String?

    private enum CodingKeys: String, CodingKey {
        case isMutable, version, userKey
    }

    public init(
                isMutable: Bool? = nil,
                version: String? = nil,
                userKey: String? = nil
    ) {
        self.isMutable = isMutable
        self.version = version
        self.userKey = userKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PropertySetApex: CustomStringConvertible {
    public var description: String { "PropertySetApex()" }
}