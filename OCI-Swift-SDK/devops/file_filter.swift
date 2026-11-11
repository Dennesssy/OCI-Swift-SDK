import Foundation

// MARK: - FileFilter

public struct FileFilter: Codable, Sendable {

    public var filePaths: [String]?

    private enum CodingKeys: String, CodingKey {
        case filePaths
    }

    public init(
                filePaths: [String]? = nil
    ) {
        self.filePaths = filePaths
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FileFilter: CustomStringConvertible {
    public var description: String { "FileFilter()" }
}