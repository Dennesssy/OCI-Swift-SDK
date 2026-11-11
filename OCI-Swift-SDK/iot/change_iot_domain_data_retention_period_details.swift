import Foundation

// MARK: - ChangeIotDomainDataRetentionPeriodDetails

public struct ChangeIotDomainDataRetentionPeriodDetails: Codable, Sendable {

    public var type: ChangeIotDomainDataRetentionPeriodDetailsTypeEnum
    public var dataRetentionPeriodInDays: Int?

    private enum CodingKeys: String, CodingKey {
        case type, dataRetentionPeriodInDays
    }

    public init(
                type: ChangeIotDomainDataRetentionPeriodDetailsTypeEnum,
                dataRetentionPeriodInDays: Int? = nil
    ) {
        self.type = type
        self.dataRetentionPeriodInDays = dataRetentionPeriodInDays
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeIotDomainDataRetentionPeriodDetails: CustomStringConvertible {
    public var description: String { "ChangeIotDomainDataRetentionPeriodDetails()" }
}