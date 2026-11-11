import Foundation

// MARK: - WorkRequestOperationTypeEnum

public enum WorkRequestOperationTypeEnum: String, Codable, Sendable {
    case createGateway = "CREATE_GATEWAY"
    case updateGateway = "UPDATE_GATEWAY"
    case deleteGateway = "DELETE_GATEWAY"
    case createDeployment = "CREATE_DEPLOYMENT"
    case updateDeployment = "UPDATE_DEPLOYMENT"
    case deleteDeployment = "DELETE_DEPLOYMENT"
    case createCertificate = "CREATE_CERTIFICATE"
    case updateCertificate = "UPDATE_CERTIFICATE"
    case deleteCertificate = "DELETE_CERTIFICATE"
    case createApi = "CREATE_API"
    case updateApi = "UPDATE_API"
    case deleteApi = "DELETE_API"
    case validateApi = "VALIDATE_API"
    case createSdk = "CREATE_SDK"
    case deleteSdk = "DELETE_SDK"
    case createUsagePlan = "CREATE_USAGE_PLAN"
    case updateUsagePlan = "UPDATE_USAGE_PLAN"
    case deleteUsagePlan = "DELETE_USAGE_PLAN"
    case createSubscriber = "CREATE_SUBSCRIBER"
    case updateSubscriber = "UPDATE_SUBSCRIBER"
    case deleteSubscriber = "DELETE_SUBSCRIBER"
}

public extension WorkRequestOperationTypeEnum {
    static var allValues: [WorkRequestOperationTypeEnum] { [.createGateway, .updateGateway, .deleteGateway, .createDeployment, .updateDeployment, .deleteDeployment, .createCertificate, .updateCertificate, .deleteCertificate, .createApi, .updateApi, .deleteApi, .validateApi, .createSdk, .deleteSdk, .createUsagePlan, .updateUsagePlan, .deleteUsagePlan, .createSubscriber, .updateSubscriber, .deleteSubscriber] }
    static var allStringValues: [String] { ["CREATE_GATEWAY", "UPDATE_GATEWAY", "DELETE_GATEWAY", "CREATE_DEPLOYMENT", "UPDATE_DEPLOYMENT", "DELETE_DEPLOYMENT", "CREATE_CERTIFICATE", "UPDATE_CERTIFICATE", "DELETE_CERTIFICATE", "CREATE_API", "UPDATE_API", "DELETE_API", "VALIDATE_API", "CREATE_SDK", "DELETE_SDK", "CREATE_USAGE_PLAN", "UPDATE_USAGE_PLAN", "DELETE_USAGE_PLAN", "CREATE_SUBSCRIBER", "UPDATE_SUBSCRIBER", "DELETE_SUBSCRIBER"] }
    static func fromString(_ value: String) -> WorkRequestOperationTypeEnum? { WorkRequestOperationTypeEnum(rawValue: value) }
}