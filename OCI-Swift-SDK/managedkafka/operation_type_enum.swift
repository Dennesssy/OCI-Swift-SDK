import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createKafkaCluster = "CREATE_KAFKA_CLUSTER"
    case updateKafkaCluster = "UPDATE_KAFKA_CLUSTER"
    case deleteKafkaCluster = "DELETE_KAFKA_CLUSTER"
    case moveKafkaCluster = "MOVE_KAFKA_CLUSTER"
    case enableSuperuser = "ENABLE_SUPERUSER"
    case disableSuperuser = "DISABLE_SUPERUSER"
    case installKafkaClusterAddon = "INSTALL_KAFKA_CLUSTER_ADDON"
    case updateKafkaClusterAddon = "UPDATE_KAFKA_CLUSTER_ADDON"
    case uninstallKafkaClusterAddon = "UNINSTALL_KAFKA_CLUSTER_ADDON"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createKafkaCluster, .updateKafkaCluster, .deleteKafkaCluster, .moveKafkaCluster, .enableSuperuser, .disableSuperuser, .installKafkaClusterAddon, .updateKafkaClusterAddon, .uninstallKafkaClusterAddon] }
    static var allStringValues: [String] { ["CREATE_KAFKA_CLUSTER", "UPDATE_KAFKA_CLUSTER", "DELETE_KAFKA_CLUSTER", "MOVE_KAFKA_CLUSTER", "ENABLE_SUPERUSER", "DISABLE_SUPERUSER", "INSTALL_KAFKA_CLUSTER_ADDON", "UPDATE_KAFKA_CLUSTER_ADDON", "UNINSTALL_KAFKA_CLUSTER_ADDON"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}