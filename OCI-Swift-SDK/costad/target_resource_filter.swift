import Foundation

// MARK: - TargetResourceFilter

public struct TargetResourceFilter: Codable, Sendable {

    public var `operator`: TargetResourceFilterOperatorEnum?
    public var dimensions: [Dimension]?
    public var tags: [Tag]?
    public var filters: [TargetResourceFilter]?

    private enum CodingKeys: String, CodingKey {
        case `operator`, dimensions, tags, filters
    }

    public init(
                `operator`: TargetResourceFilterOperatorEnum? = nil,
                dimensions: [Dimension]? = nil,
                tags: [Tag]? = nil,
                filters: [TargetResourceFilter]? = nil
    ) {
        self.`operator` = `operator`
        self.dimensions = dimensions
        self.tags = tags
        self.filters = filters
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TargetResourceFilter: CustomStringConvertible {
    public var description: String { "TargetResourceFilter()" }
}