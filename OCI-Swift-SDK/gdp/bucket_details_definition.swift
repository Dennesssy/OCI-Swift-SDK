import Foundation

// MARK: - BucketDetailsDefinition

public struct BucketDetailsDefinition: Codable, Sendable {

    public var bucketType: BucketDetailsDefinitionBucketTypeEnum
    public var namespace: String?
    public var name: String?
    public var id: String?

    private enum CodingKeys: String, CodingKey {
        case bucketType, namespace, name, id
    }

    public init(
                bucketType: BucketDetailsDefinitionBucketTypeEnum,
                namespace: String? = nil,
                name: String? = nil,
                id: String? = nil
    ) {
        self.bucketType = bucketType
        self.namespace = namespace
        self.name = name
        self.id = id
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BucketDetailsDefinition: CustomStringConvertible {
    public var description: String { "BucketDetailsDefinition()" }
}