import Foundation

// MARK: - VbsFilter

public struct VbsFilter: Codable, Sendable {

    public var include: VbsFilterAttributes?
    public var exclude: VbsFilterExclusionAttributes?
    public var events: [VbsFilterEventsEnum]?

    private enum CodingKeys: String, CodingKey {
        case include, exclude, events
    }

    public init(
                include: VbsFilterAttributes? = nil,
                exclude: VbsFilterExclusionAttributes? = nil,
                events: [VbsFilterEventsEnum]? = nil
    ) {
        self.include = include
        self.exclude = exclude
        self.events = events
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VbsFilter: CustomStringConvertible {
    public var description: String { "VbsFilter()" }
}