import Foundation

// MARK: - SetRestartOrderServerSummary

public struct SetRestartOrderServerSummary: Codable, Sendable {

    public var name: String?
    public var restartOrder: Int?

    private enum CodingKeys: String, CodingKey {
        case name, restartOrder
    }

    public init(
                name: String? = nil,
                restartOrder: Int? = nil
    ) {
        self.name = name
        self.restartOrder = restartOrder
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SetRestartOrderServerSummary: CustomStringConvertible {
    public var description: String { "SetRestartOrderServerSummary()" }
}