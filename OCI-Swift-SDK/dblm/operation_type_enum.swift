import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case dblmSubscribe = "DBLM_SUBSCRIBE"
    case dblmEnable = "DBLM_ENABLE"
    case scanVulCve = "SCAN_VUL_CVE"
    case scanVulPatch = "SCAN_VUL_PATCH"
    case scanVulImage = "SCAN_VUL_IMAGE"
    case updateSubscription = "UPDATE_SUBSCRIPTION"
    case updateSubscribedResource = "UPDATE_SUBSCRIBED_RESOURCE"
    case createSharedDatastore = "CREATE_SHARED_DATASTORE"
    case deleteSharedDatastore = "DELETE_SHARED_DATASTORE"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.dblmSubscribe, .dblmEnable, .scanVulCve, .scanVulPatch, .scanVulImage, .updateSubscription, .updateSubscribedResource, .createSharedDatastore, .deleteSharedDatastore] }
    static var allStringValues: [String] { ["DBLM_SUBSCRIBE", "DBLM_ENABLE", "SCAN_VUL_CVE", "SCAN_VUL_PATCH", "SCAN_VUL_IMAGE", "UPDATE_SUBSCRIPTION", "UPDATE_SUBSCRIBED_RESOURCE", "CREATE_SHARED_DATASTORE", "DELETE_SHARED_DATASTORE"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}