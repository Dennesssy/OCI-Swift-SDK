import Foundation

// MARK: - Backup

public struct Backup: Codable, Sendable {

    public var id: String?
    public var type: BackupTypeEnum
    public var backupLocation: String?
    public var managedInstanceId: String?
    public var contentType: BackupContentTypeEnum?
    public var timeCreated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, type, backupLocation, managedInstanceId, contentType, timeCreated
    }

    public init(
                id: String? = nil,
                type: BackupTypeEnum,
                backupLocation: String? = nil,
                managedInstanceId: String? = nil,
                contentType: BackupContentTypeEnum? = nil,
                timeCreated: Date? = nil
    ) {
        self.id = id
        self.type = type
        self.backupLocation = backupLocation
        self.managedInstanceId = managedInstanceId
        self.contentType = contentType
        self.timeCreated = timeCreated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Backup: CustomStringConvertible {
    public var description: String { "Backup()" }
}