import Foundation

// MARK: - GitlabServerFilterExclusionAttributes

public struct GitlabServerFilterExclusionAttributes: Codable, Sendable {

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

extension GitlabServerFilterExclusionAttributes: CustomStringConvertible {
    public var description: String { "GitlabServerFilterExclusionAttributes()" }
}