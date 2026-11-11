import Foundation

// MARK: - DeleteCertificateRequest

public struct DeleteCertificateRequest: Codable, Sendable {
    public var certificateId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?

    private enum CodingKeys: String, CodingKey {
        case certificateId, ifMatch, opcRequestId, isLockOverride
    }

    public init(
                certificateId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil
    ) {
        self.certificateId = certificateId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteCertificateRequest: CustomStringConvertible {
    public var description: String { "DeleteCertificateRequest()" }
}

// MARK: - DeleteCertificateResponse

public struct DeleteCertificateResponse: Codable, Sendable {
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

extension DeleteCertificateResponse: CustomStringConvertible {
    public var description: String { "DeleteCertificateResponse()" }
}