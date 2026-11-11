import Foundation

// MARK: - okecanarystrategy

public struct okecanarystrategy: Codable, Sendable {

    public var jsonData: Data?
    public var strategyType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, strategyType
    }

    public init(
                jsonData: Data? = nil,
                strategyType: String? = nil
    ) {
        self.jsonData = jsonData
        self.strategyType = strategyType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension okecanarystrategy: CustomStringConvertible {
    public var description: String { "okecanarystrategy()" }
}