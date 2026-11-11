import Foundation

// MARK: - GetAgreementRequest

public struct GetAgreementRequest: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAgreementRequest: CustomStringConvertible {
    public var description: String { "GetAgreementRequest()" }
}

// MARK: - GetAgreementResponse

public struct GetAgreementResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var agreement: Agreement?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, agreement
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                agreement: Agreement? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.agreement = agreement
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAgreementResponse: CustomStringConvertible {
    public var description: String { "GetAgreementResponse()" }
}