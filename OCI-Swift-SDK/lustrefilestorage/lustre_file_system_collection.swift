import Foundation

// MARK: - LustreFileSystemCollection

public struct LustreFileSystemCollection: Codable, Sendable {

    public var items: [LustreFileSystemSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [LustreFileSystemSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LustreFileSystemCollection: CustomStringConvertible {
    public var description: String { "LustreFileSystemCollection()" }
}