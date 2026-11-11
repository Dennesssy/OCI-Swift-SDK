import Foundation

// MARK: - ExportedVariableCollection

public struct ExportedVariableCollection: Codable, Sendable {

    public var items: [ExportedVariable]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ExportedVariable]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExportedVariableCollection: CustomStringConvertible {
    public var description: String { "ExportedVariableCollection()" }
}