import Foundation

// MARK: - ApiSchemaObjectStorageInputLocation

public struct ApiSchemaObjectStorageInputLocation: Codable, Sendable {

    public var namespaceName: String?
    public var bucketName: String?
    public var objectName: String?

    private enum CodingKeys: String, CodingKey {
        case namespaceName, bucketName, objectName
    }

    public init(
                namespaceName: String? = nil,
                bucketName: String? = nil,
                objectName: String? = nil
    ) {
        self.namespaceName = namespaceName
        self.bucketName = bucketName
        self.objectName = objectName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiSchemaObjectStorageInputLocation: CustomStringConvertible {
    public var description: String { "ApiSchemaObjectStorageInputLocation()" }
}