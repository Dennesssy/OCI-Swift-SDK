import Foundation

// MARK: - BitbucketServerFilter

public struct BitbucketServerFilter: Codable, Sendable {

    public var include: BitbucketServerFilterAttributes?
    public var events: [BitbucketServerFilterEventsEnum]?

    private enum CodingKeys: String, CodingKey {
        case include, events
    }

    public init(
                include: BitbucketServerFilterAttributes? = nil,
                events: [BitbucketServerFilterEventsEnum]? = nil
    ) {
        self.include = include
        self.events = events
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BitbucketServerFilter: CustomStringConvertible {
    public var description: String { "BitbucketServerFilter()" }
}