import Foundation

// MARK: - IamWorkRequestOperationTypeEnum

public enum IamWorkRequestOperationTypeEnum: String, Codable, Sendable {
    case createDomain = "CREATE_DOMAIN"
    case replicateDomainToRegion = "REPLICATE_DOMAIN_TO_REGION"
    case updateDomain = "UPDATE_DOMAIN"
    case activateDomain = "ACTIVATE_DOMAIN"
    case deactivateDomain = "DEACTIVATE_DOMAIN"
    case deleteDomain = "DELETE_DOMAIN"
    case changeCompartmentForDomain = "CHANGE_COMPARTMENT_FOR_DOMAIN"
    case changeLicenseTypeForDomain = "CHANGE_LICENSE_TYPE_FOR_DOMAIN"
}

public extension IamWorkRequestOperationTypeEnum {
    static var allValues: [IamWorkRequestOperationTypeEnum] { [.createDomain, .replicateDomainToRegion, .updateDomain, .activateDomain, .deactivateDomain, .deleteDomain, .changeCompartmentForDomain, .changeLicenseTypeForDomain] }
    static var allStringValues: [String] { ["CREATE_DOMAIN", "REPLICATE_DOMAIN_TO_REGION", "UPDATE_DOMAIN", "ACTIVATE_DOMAIN", "DEACTIVATE_DOMAIN", "DELETE_DOMAIN", "CHANGE_COMPARTMENT_FOR_DOMAIN", "CHANGE_LICENSE_TYPE_FOR_DOMAIN"] }
    static func fromString(_ value: String) -> IamWorkRequestOperationTypeEnum? { IamWorkRequestOperationTypeEnum(rawValue: value) }
}