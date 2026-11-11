import Foundation

// MARK: - ObjectStoragePrefix

public struct ObjectStoragePrefix: Codable, Sendable {

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

extension ObjectStoragePrefix: CustomStringConvertible {
    public var description: String { "ObjectStoragePrefix()" }
}