import Foundation

// MARK: - GitlabServerFilter

public struct GitlabServerFilter: Codable, Sendable {

    public var include: GitlabServerFilterAttributes?
    public var exclude: GitlabServerFilterExclusionAttributes?
    public var events: [GitlabServerFilterEventsEnum]?

    private enum CodingKeys: String, CodingKey {
        case include, exclude, events
    }

    public init(
                include: GitlabServerFilterAttributes? = nil,
                exclude: GitlabServerFilterExclusionAttributes? = nil,
                events: [GitlabServerFilterEventsEnum]? = nil
    ) {
        self.include = include
        self.exclude = exclude
        self.events = events
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GitlabServerFilter: CustomStringConvertible {
    public var description: String { "GitlabServerFilter()" }
}