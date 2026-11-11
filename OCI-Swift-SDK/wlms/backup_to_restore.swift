import Foundation

// MARK: - BackupToRestore

public struct BackupToRestore: Codable, Sendable {

    public var id: String?
    public var contentType: BackupContentTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case id, contentType
    }

    public init(
                id: String? = nil,
                contentType: BackupContentTypeEnum? = nil
    ) {
        self.id = id
        self.contentType = contentType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BackupToRestore: CustomStringConvertible {
    public var description: String { "BackupToRestore()" }
}