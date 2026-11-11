import Foundation

// MARK: - RepositoryObject

public struct RepositoryObject: Codable, Sendable {

    public var type: RepositoryObjectTypeEnum
    public var sizeInBytes: Int64?
    public var sha: String?
    public var isBinary: Bool?

    private enum CodingKeys: String, CodingKey {
        case type, sizeInBytes, sha, isBinary
    }

    public init(
                type: RepositoryObjectTypeEnum,
                sizeInBytes: Int64? = nil,
                sha: String? = nil,
                isBinary: Bool? = nil
    ) {
        self.type = type
        self.sizeInBytes = sizeInBytes
        self.sha = sha
        self.isBinary = isBinary
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryObject: CustomStringConvertible {
    public var description: String { "RepositoryObject()" }
}