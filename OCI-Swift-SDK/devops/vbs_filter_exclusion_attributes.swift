import Foundation

// MARK: - VbsFilterExclusionAttributes

public struct VbsFilterExclusionAttributes: Codable, Sendable {

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

extension VbsFilterExclusionAttributes: CustomStringConvertible {
    public var description: String { "VbsFilterExclusionAttributes()" }
}