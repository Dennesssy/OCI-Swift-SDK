import Foundation

// MARK: - ChangeCertificateCompartmentRequest

public struct ChangeCertificateCompartmentRequest: Codable, Sendable {
    public var certificateId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var changeCertificateCompartmentDetails: ChangeCertificateCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case certificateId, ifMatch, opcRequestId, isLockOverride, changeCertificateCompartmentDetails
    }

    public init(
                certificateId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                changeCertificateCompartmentDetails: ChangeCertificateCompartmentDetails? = nil
    ) {
        self.certificateId = certificateId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.changeCertificateCompartmentDetails = changeCertificateCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeCertificateCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeCertificateCompartmentRequest()" }
}

// MARK: - ChangeCertificateCompartmentResponse

public struct ChangeCertificateCompartmentResponse: Codable, Sendable {
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

extension ChangeCertificateCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeCertificateCompartmentResponse()" }
}