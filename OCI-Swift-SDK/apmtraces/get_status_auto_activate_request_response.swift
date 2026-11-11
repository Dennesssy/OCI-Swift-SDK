import Foundation

// MARK: - GetStatusAutoActivateRequest

public struct GetStatusAutoActivateRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var dataKeyType: GetStatusAutoActivateDataKeyTypeEnum
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, dataKeyType, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                dataKeyType: GetStatusAutoActivateDataKeyTypeEnum,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.dataKeyType = dataKeyType
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetStatusAutoActivateRequest: CustomStringConvertible {
    public var description: String { "GetStatusAutoActivateRequest()" }
}

// MARK: - GetStatusAutoActivateResponse

public struct GetStatusAutoActivateResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var autoActivateStatus: AutoActivateStatus?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, autoActivateStatus
    }

    public init(
                opcRequestId: String? = nil,
                autoActivateStatus: AutoActivateStatus? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.autoActivateStatus = autoActivateStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetStatusAutoActivateResponse: CustomStringConvertible {
    public var description: String { "GetStatusAutoActivateResponse()" }
}