import Foundation

// MARK: - QueryParameterTransformationPolicy

public struct QueryParameterTransformationPolicy: Codable, Sendable {

    public var setQueryParameters: SetQueryParameterPolicy?
    public var renameQueryParameters: RenameQueryParameterPolicy?
    public var filterQueryParameters: FilterQueryParameterPolicy?

    private enum CodingKeys: String, CodingKey {
        case setQueryParameters, renameQueryParameters, filterQueryParameters
    }

    public init(
                setQueryParameters: SetQueryParameterPolicy? = nil,
                renameQueryParameters: RenameQueryParameterPolicy? = nil,
                filterQueryParameters: FilterQueryParameterPolicy? = nil
    ) {
        self.setQueryParameters = setQueryParameters
        self.renameQueryParameters = renameQueryParameters
        self.filterQueryParameters = filterQueryParameters
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryParameterTransformationPolicy: CustomStringConvertible {
    public var description: String { "QueryParameterTransformationPolicy()" }
}