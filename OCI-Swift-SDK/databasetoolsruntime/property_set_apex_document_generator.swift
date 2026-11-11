import Foundation

// MARK: - PropertySetApexDocumentGenerator

public struct PropertySetApexDocumentGenerator: Codable, Sendable {

    public var isMutable: Bool?
    public var credentialKey: String?
    public var objectStorageNamespace: String?
    public var objectStorageBucketCompartmentId: String?
    public var objectStorageEndpoint: String?
    public var functionId: String?
    public var invokeEndpoint: String?
    public var printServerType: PropertySetApexDocumentGeneratorPrintServerTypeEnum?
    public var autonomousDatabaseResourcePrincipalStatus: PropertySetApexDocumentGeneratorAutonomousDatabaseResourcePrincipalStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case isMutable, credentialKey, objectStorageNamespace, objectStorageBucketCompartmentId, objectStorageEndpoint, functionId, invokeEndpoint, printServerType, autonomousDatabaseResourcePrincipalStatus
    }

    public init(
                isMutable: Bool? = nil,
                credentialKey: String? = nil,
                objectStorageNamespace: String? = nil,
                objectStorageBucketCompartmentId: String? = nil,
                objectStorageEndpoint: String? = nil,
                functionId: String? = nil,
                invokeEndpoint: String? = nil,
                printServerType: PropertySetApexDocumentGeneratorPrintServerTypeEnum? = nil,
                autonomousDatabaseResourcePrincipalStatus: PropertySetApexDocumentGeneratorAutonomousDatabaseResourcePrincipalStatusEnum? = nil
    ) {
        self.isMutable = isMutable
        self.credentialKey = credentialKey
        self.objectStorageNamespace = objectStorageNamespace
        self.objectStorageBucketCompartmentId = objectStorageBucketCompartmentId
        self.objectStorageEndpoint = objectStorageEndpoint
        self.functionId = functionId
        self.invokeEndpoint = invokeEndpoint
        self.printServerType = printServerType
        self.autonomousDatabaseResourcePrincipalStatus = autonomousDatabaseResourcePrincipalStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PropertySetApexDocumentGenerator: CustomStringConvertible {
    public var description: String { "PropertySetApexDocumentGenerator()" }
}