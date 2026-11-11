import Foundation

// MARK: - BuildPipelineCollection

public struct BuildPipelineCollection: Codable, Sendable {

    public var items: [BuildPipelineSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BuildPipelineSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildPipelineCollection: CustomStringConvertible {
    public var description: String { "BuildPipelineCollection()" }
}