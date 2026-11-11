import Foundation

// MARK: - Quota

public struct Quota: Codable, Sendable {

    public var value: Int?
    public var unit: QuotaUnitEnum
    public var resetPolicy: QuotaResetPolicyEnum
    public var operationOnBreach: QuotaOperationOnBreachEnum

    private enum CodingKeys: String, CodingKey {
        case value, unit, resetPolicy, operationOnBreach
    }

    public init(
                value: Int? = nil,
                unit: QuotaUnitEnum,
                resetPolicy: QuotaResetPolicyEnum,
                operationOnBreach: QuotaOperationOnBreachEnum
    ) {
        self.value = value
        self.unit = unit
        self.resetPolicy = resetPolicy
        self.operationOnBreach = operationOnBreach
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Quota: CustomStringConvertible {
    public var description: String { "Quota()" }
}