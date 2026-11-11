import Foundation

// MARK: - ObjectStoragePrefixOutputLocation

public struct ObjectStoragePrefixOutputLocation: Codable, Sendable {

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

extension ObjectStoragePrefixOutputLocation: CustomStringConvertible {
    public var description: String { "ObjectStoragePrefixOutputLocation()" }
}