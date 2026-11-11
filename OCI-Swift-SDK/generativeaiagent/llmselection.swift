import Foundation

// MARK: - llmselection

public struct llmselection: Codable, Sendable {

    public var jsonData: Data?
    public var llmSelectionType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, llmSelectionType
    }

    public init(
                jsonData: Data? = nil,
                llmSelectionType: String? = nil
    ) {
        self.jsonData = jsonData
        self.llmSelectionType = llmSelectionType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension llmselection: CustomStringConvertible {
    public var description: String { "llmselection()" }
}