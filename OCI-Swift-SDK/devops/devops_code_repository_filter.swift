import Foundation

// MARK: - DevopsCodeRepositoryFilter

public struct DevopsCodeRepositoryFilter: Codable, Sendable {

    public var include: DevopsCodeRepositoryFilterAttributes?
    public var exclude: DevopsCodeRepositoryFilterExclusionAttributes?
    public var events: [DevopsCodeRepositoryFilterEventsEnum]?

    private enum CodingKeys: String, CodingKey {
        case include, exclude, events
    }

    public init(
                include: DevopsCodeRepositoryFilterAttributes? = nil,
                exclude: DevopsCodeRepositoryFilterExclusionAttributes? = nil,
                events: [DevopsCodeRepositoryFilterEventsEnum]? = nil
    ) {
        self.include = include
        self.exclude = exclude
        self.events = events
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DevopsCodeRepositoryFilter: CustomStringConvertible {
    public var description: String { "DevopsCodeRepositoryFilter()" }
}