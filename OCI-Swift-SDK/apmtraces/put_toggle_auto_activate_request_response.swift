import Foundation

// MARK: - PutToggleAutoActivateRequest

public struct PutToggleAutoActivateRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var isAutoActivateOn: Bool?
    public var dataKeyType: PutToggleAutoActivateDataKeyTypeEnum
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, isAutoActivateOn, dataKeyType, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                isAutoActivateOn: Bool? = nil,
                dataKeyType: PutToggleAutoActivateDataKeyTypeEnum,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.isAutoActivateOn = isAutoActivateOn
        self.dataKeyType = dataKeyType
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PutToggleAutoActivateRequest: CustomStringConvertible {
    public var description: String { "PutToggleAutoActivateRequest()" }
}

// MARK: - PutToggleAutoActivateResponse

public struct PutToggleAutoActivateResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var autoActivateToggleStatus: AutoActivateToggleStatus?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, autoActivateToggleStatus
    }

    public init(
                opcRequestId: String? = nil,
                autoActivateToggleStatus: AutoActivateToggleStatus? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.autoActivateToggleStatus = autoActivateToggleStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PutToggleAutoActivateResponse: CustomStringConvertible {
    public var description: String { "PutToggleAutoActivateResponse()" }
}