import Foundation

// MARK: - BitbucketCloudFilterExclusionAttributes

public struct BitbucketCloudFilterExclusionAttributes: Codable, Sendable {

    public var fileFilter: FileFilter?

    private enum CodingKeys: String, CodingKey {
        case fileFilter
    }

    public init(
                fileFilter: FileFilter? = nil
    ) {
        self.fileFilter = fileFilter
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BitbucketCloudFilterExclusionAttributes: CustomStringConvertible {
    public var description: String { "BitbucketCloudFilterExclusionAttributes()" }
}