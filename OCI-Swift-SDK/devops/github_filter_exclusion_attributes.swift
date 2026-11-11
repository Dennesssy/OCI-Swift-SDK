import Foundation

// MARK: - GithubFilterExclusionAttributes

public struct GithubFilterExclusionAttributes: Codable, Sendable {

    public var fileFilter: FileFilter?

    private enum CodingKeys: String, CodingKey {
        case fileFilter
    }

    public init(
                fileFilter: FileFilter? = nil
    ) {
        self.fileFilter = fileFilter
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GithubFilterExclusionAttributes: CustomStringConvertible {
    public var description: String { "GithubFilterExclusionAttributes()" }
}