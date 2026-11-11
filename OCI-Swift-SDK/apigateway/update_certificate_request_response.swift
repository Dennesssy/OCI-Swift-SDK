import Foundation

// MARK: - UpdateCertificateRequest

public struct UpdateCertificateRequest: Codable, Sendable {
    public var certificateId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var updateCertificateDetails: UpdateCertificateDetails?

    private enum CodingKeys: String, CodingKey {
        case certificateId, ifMatch, opcRequestId, isLockOverride, updateCertificateDetails
    }

    public init(
                certificateId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                updateCertificateDetails: UpdateCertificateDetails? = nil
    ) {
        self.certificateId = certificateId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.updateCertificateDetails = updateCertificateDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCertificateRequest: CustomStringConvertible {
    public var description: String { "UpdateCertificateRequest()" }
}

// MARK: - UpdateCertificateResponse

public struct UpdateCertificateResponse: Codable, Sendable {
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

extension UpdateCertificateResponse: CustomStringConvertible {
    public var description: String { "UpdateCertificateResponse()" }
}