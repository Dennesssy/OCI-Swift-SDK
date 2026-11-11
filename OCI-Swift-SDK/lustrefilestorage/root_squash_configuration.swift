import Foundation

// MARK: - RootSquashConfiguration

public struct RootSquashConfiguration: Codable, Sendable {

    public var identitySquash: RootSquashConfigurationIdentitySquashEnum?
    public var squashUid: Int64?
    public var squashGid: Int64?
    public var clientExceptions: [String]?

    private enum CodingKeys: String, CodingKey {
        case identitySquash, squashUid, squashGid, clientExceptions
    }

    public init(
                identitySquash: RootSquashConfigurationIdentitySquashEnum? = nil,
                squashUid: Int64? = nil,
                squashGid: Int64? = nil,
                clientExceptions: [String]? = nil
    ) {
        self.identitySquash = identitySquash
        self.squashUid = squashUid
        self.squashGid = squashGid
        self.clientExceptions = clientExceptions
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RootSquashConfiguration: CustomStringConvertible {
    public var description: String { "RootSquashConfiguration()" }
}