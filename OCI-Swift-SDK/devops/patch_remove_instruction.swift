import Foundation

// MARK: - PatchRemoveInstruction

public struct PatchRemoveInstruction: Codable, Sendable {

    public var selection: String?

    private enum CodingKeys: String, CodingKey {
        case selection
    }

    public init(
                selection: String? = nil
    ) {
        self.selection = selection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchRemoveInstruction: CustomStringConvertible {
    public var description: String { "PatchRemoveInstruction()" }
}