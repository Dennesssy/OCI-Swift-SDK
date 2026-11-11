import Foundation

// MARK: - CustomMetric

public struct CustomMetric: Codable, Sendable {

    public var name: String?
    public var namespace: String?
    public var description: String?
    public var resourceGroup: String?
    public var isAnomalyDetectionEnabled: Bool?
    public var compartment: String?
    public var unit: String?
    public var isMetricPublished: Bool?

    private enum CodingKeys: String, CodingKey {
        case name, namespace, description, resourceGroup, isAnomalyDetectionEnabled, compartment, unit, isMetricPublished
    }

    public init(
                name: String? = nil,
                namespace: String? = nil,
                description: String? = nil,
                resourceGroup: String? = nil,
                isAnomalyDetectionEnabled: Bool? = nil,
                compartment: String? = nil,
                unit: String? = nil,
                isMetricPublished: Bool? = nil
    ) {
        self.name = name
        self.namespace = namespace
        self.description = description
        self.resourceGroup = resourceGroup
        self.isAnomalyDetectionEnabled = isAnomalyDetectionEnabled
        self.compartment = compartment
        self.unit = unit
        self.isMetricPublished = isMetricPublished
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
