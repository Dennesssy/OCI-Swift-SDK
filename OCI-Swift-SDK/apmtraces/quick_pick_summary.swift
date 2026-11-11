import Foundation

// MARK: - QuickPickSummary

public struct QuickPickSummary: Codable, Sendable {

    public var quickPickName: String?
    public var quickPickQuery: String?

    private enum CodingKeys: String, CodingKey {
        case quickPickName, quickPickQuery
    }

    public init(
                quickPickName: String? = nil,
                quickPickQuery: String? = nil
    ) {
        self.quickPickName = quickPickName
        self.quickPickQuery = quickPickQuery
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QuickPickSummary: CustomStringConvertible {
    public var description: String { "QuickPickSummary()" }
}