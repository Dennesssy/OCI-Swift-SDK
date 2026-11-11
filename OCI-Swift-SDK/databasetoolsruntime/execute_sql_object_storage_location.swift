import Foundation

// MARK: - ExecuteSqlObjectStorageLocation

public struct ExecuteSqlObjectStorageLocation: Codable, Sendable {

    public var namespace: String?
    public var bucketName: String?
    public var objectName: String?

    private enum CodingKeys: String, CodingKey {
        case namespace, bucketName, objectName
    }

    public init(
                namespace: String? = nil,
                bucketName: String? = nil,
                objectName: String? = nil
    ) {
        self.namespace = namespace
        self.bucketName = bucketName
        self.objectName = objectName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlObjectStorageLocation: CustomStringConvertible {
    public var description: String { "ExecuteSqlObjectStorageLocation()" }
}