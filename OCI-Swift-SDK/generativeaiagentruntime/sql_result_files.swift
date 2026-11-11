import Foundation

// MARK: - SqlResultFiles

public struct SqlResultFiles: Codable, Sendable {

    public var statusFile: String?
    public var dataFile: String?

    private enum CodingKeys: String, CodingKey {
        case statusFile, dataFile
    }

    public init(
                statusFile: String? = nil,
                dataFile: String? = nil
    ) {
        self.statusFile = statusFile
        self.dataFile = dataFile
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SqlResultFiles: CustomStringConvertible {
    public var description: String { "SqlResultFiles()" }
}