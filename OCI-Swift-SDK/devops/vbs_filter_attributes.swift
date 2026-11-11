import Foundation

// MARK: - VbsFilterAttributes

public struct VbsFilterAttributes: Codable, Sendable {

    public var headRef: String?
    public var baseRef: String?
    public var repositoryName: String?
    public var fileFilter: FileFilter?

    private enum CodingKeys: String, CodingKey {
        case headRef, baseRef, repositoryName, fileFilter
    }

    public init(
                headRef: String? = nil,
                baseRef: String? = nil,
                repositoryName: String? = nil,
                fileFilter: FileFilter? = nil
    ) {
        self.headRef = headRef
        self.baseRef = baseRef
        self.repositoryName = repositoryName
        self.fileFilter = fileFilter
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VbsFilterAttributes: CustomStringConvertible {
    public var description: String { "VbsFilterAttributes()" }
}