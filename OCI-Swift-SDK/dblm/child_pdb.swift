import Foundation

// MARK: - ChildPdb

public struct ChildPdb: Codable, Sendable {

    public var pdbId: String?
    public var name: String?
    public var openMode: String?
    public var restricted: String?
    public var recoveryStatus: String?
    public var lastChangedBy: String?

    private enum CodingKeys: String, CodingKey {
        case pdbId, name, openMode, restricted, recoveryStatus, lastChangedBy
    }

    public init(
                pdbId: String? = nil,
                name: String? = nil,
                openMode: String? = nil,
                restricted: String? = nil,
                recoveryStatus: String? = nil,
                lastChangedBy: String? = nil
    ) {
        self.pdbId = pdbId
        self.name = name
        self.openMode = openMode
        self.restricted = restricted
        self.recoveryStatus = recoveryStatus
        self.lastChangedBy = lastChangedBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChildPdb: CustomStringConvertible {
    public var description: String { "ChildPdb()" }
}