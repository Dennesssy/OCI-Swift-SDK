import Foundation

// MARK: - RepositoryFileLines

public struct RepositoryFileLines: Codable, Sendable {

    public var lines: [FileLineDetails]

    private enum CodingKeys: String, CodingKey {
        case lines
    }

    public init(
                lines: [FileLineDetails]
    ) {
        self.lines = lines
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RepositoryFileLines: CustomStringConvertible {
    public var description: String { "RepositoryFileLines()" }
}