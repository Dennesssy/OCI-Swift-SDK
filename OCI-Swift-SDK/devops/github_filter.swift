import Foundation

// MARK: - GithubFilter

public struct GithubFilter: Codable, Sendable {

    public var include: GithubFilterAttributes?
    public var exclude: GithubFilterExclusionAttributes?
    public var events: [GithubFilterEventsEnum]?

    private enum CodingKeys: String, CodingKey {
        case include, exclude, events
    }

    public init(
                include: GithubFilterAttributes? = nil,
                exclude: GithubFilterExclusionAttributes? = nil,
                events: [GithubFilterEventsEnum]? = nil
    ) {
        self.include = include
        self.exclude = exclude
        self.events = events
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GithubFilter: CustomStringConvertible {
    public var description: String { "GithubFilter()" }
}