import Foundation

// MARK: - CreateDiagnosisStoreRequest

public struct CreateDiagnosisStoreRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDiagnosisStoreDetails: CreateDiagnosisStoreDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDiagnosisStoreDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDiagnosisStoreDetails: CreateDiagnosisStoreDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDiagnosisStoreDetails = createDiagnosisStoreDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDiagnosisStoreRequest: CustomStringConvertible {
    public var description: String { "CreateDiagnosisStoreRequest()" }
}

// MARK: - CreateDiagnosisStoreResponse

public struct CreateDiagnosisStoreResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var diagnosisStore: DiagnosisStore?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, diagnosisStore
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                diagnosisStore: DiagnosisStore? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.diagnosisStore = diagnosisStore
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDiagnosisStoreResponse: CustomStringConvertible {
    public var description: String { "CreateDiagnosisStoreResponse()" }
}