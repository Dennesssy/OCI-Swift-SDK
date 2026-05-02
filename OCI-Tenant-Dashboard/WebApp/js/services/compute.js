/**
 * Compute Service Module
 * Handles OCI Compute (Core) API interactions
 */

const ComputeService = {
    async listInstances(compartmentId) {
        try {
            const response = await OCIBridge.call('core', 'listInstances', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list instances:', error);
            return [];
        }
    },
    
    async getInstance(instanceId) {
        try {
            const response = await OCIBridge.call('core', 'getInstance', { instanceId });
            return response;
        } catch (error) {
            console.error('Failed to get instance:', error);
            throw error;
        }
    },
    
    async startInstance(instanceId) {
        try {
            await OCIBridge.call('core', 'instanceAction', {
                instanceId,
                action: 'START'
            });
            return true;
        } catch (error) {
            console.error('Failed to start instance:', error);
            throw error;
        }
    },
    
    async stopInstance(instanceId) {
        try {
            await OCIBridge.call('core', 'instanceAction', {
                instanceId,
                action: 'STOP'
            });
            return true;
        } catch (error) {
            console.error('Failed to stop instance:', error);
            throw error;
        }
    },
    
    async restartInstance(instanceId) {
        try {
            await OCIBridge.call('core', 'instanceAction', {
                instanceId,
                action: 'RESET'
            });
            return true;
        } catch (error) {
            console.error('Failed to restart instance:', error);
            throw error;
        }
    },
    
    async listShapes() {
        try {
            const response = await OCIBridge.call('core', 'listShapes');
            return response.items || [];
        } catch (error) {
            console.error('Failed to list shapes:', error);
            return [];
        }
    },
    
    async listImages(compartmentId) {
        try {
            const response = await OCIBridge.call('core', 'listImages', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list images:', error);
            return [];
        }
    },
    
    async createInstance(config) {
        try {
            const response = await OCIBridge.call('core', 'launchInstance', config);
            return response;
        } catch (error) {
            console.error('Failed to create instance:', error);
            throw error;
        }
    },
    
    async deleteInstance(instanceId) {
        try {
            await OCIBridge.call('core', 'terminateInstance', { instanceId });
            return true;
        } catch (error) {
            console.error('Failed to delete instance:', error);
            throw error;
        }
    },
    
    // Helper methods
    getStatusColor(state) {
        const colors = {
            'RUNNING': 'var(--status-healthy)',
            'STOPPED': 'var(--text-tertiary)',
            'STOPPING': 'var(--status-warning)',
            'STARTING': 'var(--status-warning)',
            'TERMINATED': 'var(--text-tertiary)',
            'TERMINATING': 'var(--status-critical)',
            'PROVISIONING': 'var(--status-info)'
        };
        return colors[state] || 'var(--text-secondary)';
    },
    
    formatInstanceName(instance) {
        return instance.displayName || instance.id.split('.').pop().substring(0, 8);
    },
    
    formatShape(shape) {
        // VM.Standard2.1 -> Standard 2.1
        return shape.replace('VM.', '').replace('BM.', 'Bare Metal ');
    }
};

// Expose globally
window.ComputeService = ComputeService;
