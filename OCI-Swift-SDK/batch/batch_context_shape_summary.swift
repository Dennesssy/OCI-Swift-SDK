import Foundation

// MARK: - BatchContextShapeSummary

public struct BatchContextShapeSummary: Codable, Sendable {

    public var name: String?
    public var processorDescription: String?
    public var memoryOptions: ShapeMemoryOptions?
    public var networkingBandwidthOptions: ShapeNetworkingBandwidthOptions?
    public var ocpuOptions: ShapeOcpuOptions?

    private enum CodingKeys: String, CodingKey {
        case name, processorDescription, memoryOptions, networkingBandwidthOptions, ocpuOptions
    }

    public init(
                name: String? = nil,
                processorDescription: String? = nil,
                memoryOptions: ShapeMemoryOptions? = nil,
                networkingBandwidthOptions: ShapeNetworkingBandwidthOptions? = nil,
                ocpuOptions: ShapeOcpuOptions? = nil
    ) {
        self.name = name
        self.processorDescription = processorDescription
        self.memoryOptions = memoryOptions
        self.networkingBandwidthOptions = networkingBandwidthOptions
        self.ocpuOptions = ocpuOptions
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BatchContextShapeSummary: CustomStringConvertible {
    public var description: String { "BatchContextShapeSummary()" }
}