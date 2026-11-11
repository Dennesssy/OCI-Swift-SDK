import Foundation

// MARK: - BuildPipelineStagePredecessorCollection

public struct BuildPipelineStagePredecessorCollection: Codable, Sendable {

    public var items: [BuildPipelineStagePredecessor]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BuildPipelineStagePredecessor]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildPipelineStagePredecessorCollection: CustomStringConvertible {
    public var description: String { "BuildPipelineStagePredecessorCollection()" }
}