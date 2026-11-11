import Foundation

// MARK: - BuildPipelineStagePredecessor

public struct BuildPipelineStagePredecessor: Codable, Sendable {

    public var id: String?

    private enum CodingKeys: String, CodingKey {
        case id
    }

    public init(
                id: String? = nil
    ) {
        self.id = id
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildPipelineStagePredecessor: CustomStringConvertible {
    public var description: String { "BuildPipelineStagePredecessor()" }
}