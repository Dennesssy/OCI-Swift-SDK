import Foundation

// MARK: - GitlabFilter

public struct GitlabFilter: Codable, Sendable {

    public var include: GitlabFilterAttributes?
    public var exclude: GitlabFilterExclusionAttributes?
    public var events: [GitlabFilterEventsEnum]?

    private enum CodingKeys: String, CodingKey {
        case include, exclude, events
    }

    public init(
                include: GitlabFilterAttributes? = nil,
                exclude: GitlabFilterExclusionAttributes? = nil,
                events: [GitlabFilterEventsEnum]? = nil
    ) {
        self.include = include
        self.exclude = exclude
        self.events = events
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GitlabFilter: CustomStringConvertible {
    public var description: String { "GitlabFilter()" }
}