import Foundation

// MARK: - ObjectStorage

public struct ObjectStorage: Codable, Sendable {

    public var bucketName: String?
    public var nameSpace: String?
    public var objectNamePrefix: String?

    private enum CodingKeys: String, CodingKey {
        case bucketName, nameSpace, objectNamePrefix
    }

    public init(
                bucketName: String? = nil,
                nameSpace: String? = nil,
                objectNamePrefix: String? = nil
    ) {
        self.bucketName = bucketName
        self.nameSpace = nameSpace
        self.objectNamePrefix = objectNamePrefix
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ObjectStorage: CustomStringConvertible {
    public var description: String { "ObjectStorage()" }
}