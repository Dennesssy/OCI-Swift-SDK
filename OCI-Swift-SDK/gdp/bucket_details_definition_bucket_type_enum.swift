import Foundation

// MARK: - BucketDetailsDefinitionBucketTypeEnum

public enum BucketDetailsDefinitionBucketTypeEnum: String, Codable, Sendable {
    case source = "SOURCE"
    case transfer = "TRANSFER"
    case reject = "REJECT"
    case destination = "DESTINATION"
}

public extension BucketDetailsDefinitionBucketTypeEnum {
    static var allValues: [BucketDetailsDefinitionBucketTypeEnum] { [.source, .transfer, .reject, .destination] }
    static var allStringValues: [String] { ["SOURCE", "TRANSFER", "REJECT", "DESTINATION"] }
    static func fromString(_ value: String) -> BucketDetailsDefinitionBucketTypeEnum? { BucketDetailsDefinitionBucketTypeEnum(rawValue: value) }
}