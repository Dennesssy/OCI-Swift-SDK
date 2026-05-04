/**
 * Limits & Quotas Service Module
 * Handles OCI Service Limits and Quotas
 */

const LimitsService = {
    // Service Limits
    async listLimitDefinitions(compartmentId, serviceName) {
        try {
            const response = await OCIBridge.call('limits', 'listLimitDefinitions', {
                compartmentId,
                serviceName
            });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list limit definitions:', error);
            return [];
        }
    },
    
    async getResourceAvailability(serviceName, limitName, compartmentId) {
        try {
            const response = await OCIBridge.call('limits', 'getResourceAvailability', {
                serviceName,
                limitName,
                compartmentId
            });
            return response;
        } catch (error) {
            console.error('Failed to get resource availability:', error);
            return null;
        }
    },
    
    async listLimitValues(compartmentId, serviceName) {
        try {
            const response = await OCIBridge.call('limits', 'listLimitValues', {
                compartmentId,
                serviceName
            });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list limit values:', error);
            return [];
        }
    },
    
    async listServices() {
        try {
            const response = await OCIBridge.call('limits', 'listServices', {});
            return response.items || [];
        } catch (error) {
            console.error('Failed to list services:', error);
            return [];
        }
    },
    
    // Quotas
    async listQuotas(compartmentId) {
        try {
            const response = await OCIBridge.call('quotas', 'listQuotas', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list quotas:', error);
            return [];
        }
    },
    
    async getQuota(quotaId) {
        try {
            const response = await OCIBridge.call('quotas', 'getQuota', { quotaId });
            return response;
        } catch (error) {
            console.error('Failed to get quota:', error);
            throw error;
        }
    },
    
    async createQuota(config) {
        try {
            const response = await OCIBridge.call('quotas', 'createQuota', config);
            return response;
        } catch (error) {
            console.error('Failed to create quota:', error);
            throw error;
        }
    },
    
    async updateQuota(quotaId, config) {
        try {
            const response = await OCIBridge.call('quotas', 'updateQuota', {
                quotaId,
                ...config
            });
            return response;
        } catch (error) {
            console.error('Failed to update quota:', error);
            throw error;
        }
    },
    
    async deleteQuota(quotaId) {
        try {
            await OCIBridge.call('quotas', 'deleteQuota', { quotaId });
            return true;
        } catch (error) {
            console.error('Failed to delete quota:', error);
            throw error;
        }
    },
    
    // Resource Availability Summary
    async getLimitsSummary(compartmentId) {
        const services = await this.listServices();
        const summary = [];
        
        for (const service of services.slice(0, 5)) {
            try {
                const limits = await this.listLimitValues(compartmentId, service.name);
                summary.push({
                    service: service.name,
                    displayName: service.description || service.name,
                    limits: limits.slice(0, 3)
                });
            } catch (e) {
                // Skip services that error
            }
        }
        
        return summary;
    },
    
    // Common OCI Limits
    async getComputeLimits(compartmentId) {
        return this.getResourceAvailability('compute', 'vm-standard-e2-1-micro-count', compartmentId);
    },
    
    async getStorageLimits(compartmentId) {
        return this.getResourceAvailability('objectstorage', 'buckets-count', compartmentId);
    },
    
    async getVCNLimits(compartmentId) {
        return this.getResourceAvailability('vcn', 'vcns-count', compartmentId);
    },
    
    async getLoadBalancerLimits(compartmentId) {
        return this.getResourceAvailability('loadbalancer', 'lb-100mbps-count', compartmentId);
    },
    
    // Helper methods
    getLimitStatusColor(used, available) {
        const percentage = (used / available) * 100;
        if (percentage >= 90) return 'var(--status-critical)';
        if (percentage >= 75) return 'var(--status-warning)';
        return 'var(--status-healthy)';
    },
    
    formatLimitPercentage(used, available) {
        const percentage = ((used / available) * 100).toFixed(1);
        return `${percentage}%`;
    },
    
    getLimitRecommendation(used, available) {
        const percentage = (used / available) * 100;
        if (percentage >= 90) return '🔴 Request increase immediately';
        if (percentage >= 75) return '🟡 Monitor closely';
        if (percentage >= 50) return '🟢 Good utilization';
        return '⚪ Low utilization';
    }
};

window.LimitsService = LimitsService;
