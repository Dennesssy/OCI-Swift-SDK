import Foundation

// MARK: - patchinstruction

public struct patchinstruction: Codable, Sendable {

    public var jsonData: Data?
    public var selection: String?
    public var operation: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, selection, operation
    }

    public init(
                jsonData: Data? = nil,
                selection: String? = nil,
                operation: String? = nil
    ) {
        self.jsonData = jsonData
        self.selection = selection
        self.operation = operation
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension patchinstruction: CustomStringConvertible {
    public var description: String { "patchinstruction()" }
}