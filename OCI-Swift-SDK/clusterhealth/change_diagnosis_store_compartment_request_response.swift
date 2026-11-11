import Foundation

// MARK: - ChangeDiagnosisStoreCompartmentRequest

public struct ChangeDiagnosisStoreCompartmentRequest: Codable, Sendable {
    public var diagnosisStoreId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeDiagnosisStoreCompartmentDetails: ChangeDiagnosisStoreCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case diagnosisStoreId, ifMatch, opcRequestId, changeDiagnosisStoreCompartmentDetails
    }

    public init(
                diagnosisStoreId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeDiagnosisStoreCompartmentDetails: ChangeDiagnosisStoreCompartmentDetails? = nil
    ) {
        self.diagnosisStoreId = diagnosisStoreId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeDiagnosisStoreCompartmentDetails = changeDiagnosisStoreCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeDiagnosisStoreCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeDiagnosisStoreCompartmentRequest()" }
}

// MARK: - ChangeDiagnosisStoreCompartmentResponse

public struct ChangeDiagnosisStoreCompartmentResponse: Codable, Sendable {
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

extension ChangeDiagnosisStoreCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeDiagnosisStoreCompartmentResponse()" }
}