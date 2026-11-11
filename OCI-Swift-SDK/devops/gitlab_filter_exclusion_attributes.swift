import Foundation

// MARK: - GitlabFilterExclusionAttributes

public struct GitlabFilterExclusionAttributes: Codable, Sendable {

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

extension GitlabFilterExclusionAttributes: CustomStringConvertible {
    public var description: String { "GitlabFilterExclusionAttributes()" }
}