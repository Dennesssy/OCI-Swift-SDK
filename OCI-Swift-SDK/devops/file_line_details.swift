import Foundation

// MARK: - FileLineDetails

public struct FileLineDetails: Codable, Sendable {

    public var lineNumber: Int?
    public var lineContent: String?

    private enum CodingKeys: String, CodingKey {
        case lineNumber, lineContent
    }

    public init(
                lineNumber: Int? = nil,
                lineContent: String? = nil
    ) {
        self.lineNumber = lineNumber
        self.lineContent = lineContent
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FileLineDetails: CustomStringConvertible {
    public var description: String { "FileLineDetails()" }
}