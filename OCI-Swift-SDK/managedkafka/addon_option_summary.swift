import Foundation

// MARK: - AddonOptionSummary

public struct AddonOptionSummary: Codable, Sendable {

    public var name: String?
    public var lifecycleState: AddonOptionSummaryLifecycleStateEnum

    private enum CodingKeys: String, CodingKey {
        case name, lifecycleState
    }

    public init(
                name: String? = nil,
                lifecycleState: AddonOptionSummaryLifecycleStateEnum
    ) {
        self.name = name
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddonOptionSummary: CustomStringConvertible {
    public var description: String { "AddonOptionSummary()" }
}