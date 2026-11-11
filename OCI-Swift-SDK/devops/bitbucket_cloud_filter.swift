import Foundation

// MARK: - BitbucketCloudFilter

public struct BitbucketCloudFilter: Codable, Sendable {

    public var include: BitbucketCloudFilterAttributes?
    public var exclude: BitbucketCloudFilterExclusionAttributes?
    public var events: [BitbucketCloudFilterEventsEnum]?

    private enum CodingKeys: String, CodingKey {
        case include, exclude, events
    }

    public init(
                include: BitbucketCloudFilterAttributes? = nil,
                exclude: BitbucketCloudFilterExclusionAttributes? = nil,
                events: [BitbucketCloudFilterEventsEnum]? = nil
    ) {
        self.include = include
        self.exclude = exclude
        self.events = events
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BitbucketCloudFilter: CustomStringConvertible {
    public var description: String { "BitbucketCloudFilter()" }
}