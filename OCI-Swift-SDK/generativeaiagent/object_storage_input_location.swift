import Foundation

// MARK: - ObjectStorageInputLocation

public struct ObjectStorageInputLocation: Codable, Sendable {

    public var namespaceName: String?
    public var bucketName: String?
    public var prefix: String?

    private enum CodingKeys: String, CodingKey {
        case namespaceName, bucketName, prefix
    }

    public init(
                namespaceName: String? = nil,
                bucketName: String? = nil,
                prefix: String? = nil
    ) {
        self.namespaceName = namespaceName
        self.bucketName = bucketName
        self.prefix = prefix
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ObjectStorageInputLocation: CustomStringConvertible {
    public var description: String { "ObjectStorageInputLocation()" }
}