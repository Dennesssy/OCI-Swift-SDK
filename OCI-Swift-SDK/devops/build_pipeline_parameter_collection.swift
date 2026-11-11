import Foundation

// MARK: - BuildPipelineParameterCollection

public struct BuildPipelineParameterCollection: Codable, Sendable {

    public var items: [BuildPipelineParameter]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BuildPipelineParameter]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildPipelineParameterCollection: CustomStringConvertible {
    public var description: String { "BuildPipelineParameterCollection()" }
}