import Foundation

// MARK: - InstalledPatchCollection

public struct InstalledPatchCollection: Codable, Sendable {

    public var items: [InstalledPatchSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [InstalledPatchSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InstalledPatchCollection: CustomStringConvertible {
    public var description: String { "InstalledPatchCollection()" }
}