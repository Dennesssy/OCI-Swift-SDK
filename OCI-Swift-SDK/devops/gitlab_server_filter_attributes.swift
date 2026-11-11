import Foundation

// MARK: - GitlabServerFilterAttributes

public struct GitlabServerFilterAttributes: Codable, Sendable {

    public var headRef: String?
    public var baseRef: String?
    public var fileFilter: FileFilter?

    private enum CodingKeys: String, CodingKey {
        case headRef, baseRef, fileFilter
    }

    public init(
                headRef: String? = nil,
                baseRef: String? = nil,
                fileFilter: FileFilter? = nil
    ) {
        self.headRef = headRef
        self.baseRef = baseRef
        self.fileFilter = fileFilter
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GitlabServerFilterAttributes: CustomStringConvertible {
    public var description: String { "GitlabServerFilterAttributes()" }
}