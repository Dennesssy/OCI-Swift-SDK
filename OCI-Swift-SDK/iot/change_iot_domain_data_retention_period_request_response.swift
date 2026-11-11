import Foundation

// MARK: - ChangeIotDomainDataRetentionPeriodRequest

public struct ChangeIotDomainDataRetentionPeriodRequest: Codable, Sendable {
    public var iotDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeIotDomainDataRetentionPeriodDetails: ChangeIotDomainDataRetentionPeriodDetails?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, ifMatch, opcRequestId, changeIotDomainDataRetentionPeriodDetails
    }

    public init(
                iotDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeIotDomainDataRetentionPeriodDetails: ChangeIotDomainDataRetentionPeriodDetails? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeIotDomainDataRetentionPeriodDetails = changeIotDomainDataRetentionPeriodDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeIotDomainDataRetentionPeriodRequest: CustomStringConvertible {
    public var description: String { "ChangeIotDomainDataRetentionPeriodRequest()" }
}

// MARK: - ChangeIotDomainDataRetentionPeriodResponse

public struct ChangeIotDomainDataRetentionPeriodResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeIotDomainDataRetentionPeriodResponse: CustomStringConvertible {
    public var description: String { "ChangeIotDomainDataRetentionPeriodResponse()" }
}