/**
 * Resource Manager Service Module
 * Handles OCI Resource Manager (Terraform stacks, jobs, states)
 */

const ResourceManagerService = {
    // Stacks
    async listStacks(compartmentId) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'listStacks', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list stacks:', error);
            return [];
        }
    },
    
    async getStack(stackId) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'getStack', { stackId });
            return response;
        } catch (error) {
            console.error('Failed to get stack:', error);
            throw error;
        }
    },
    
    async createStack(config) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'createStack', config);
            return response;
        } catch (error) {
            console.error('Failed to create stack:', error);
            throw error;
        }
    },
    
    async updateStack(stackId, config) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'updateStack', {
                stackId,
                ...config
            });
            return response;
        } catch (error) {
            console.error('Failed to update stack:', error);
            throw error;
        }
    },
    
    async deleteStack(stackId) {
        try {
            await OCIBridge.call('resourcemanager', 'deleteStack', { stackId });
            return true;
        } catch (error) {
            console.error('Failed to delete stack:', error);
            throw error;
        }
    },
    
    // Jobs
    async listJobs(stackId) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'listJobs', { stackId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list jobs:', error);
            return [];
        }
    },
    
    async getJob(jobId) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'getJob', { jobId });
            return response;
        } catch (error) {
            console.error('Failed to get job:', error);
            throw error;
        }
    },
    
    async createJob(stackId, operation, config = {}) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'createJob', {
                stackId,
                operation,
                ...config
            });
            return response;
        } catch (error) {
            console.error('Failed to create job:', error);
            throw error;
        }
    },
    
    async cancelJob(jobId) {
        try {
            await OCIBridge.call('resourcemanager', 'cancelJob', { jobId });
            return true;
        } catch (error) {
            console.error('Failed to cancel job:', error);
            throw error;
        }
    },
    
    // Job Logs
    async getJobLogs(jobId) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'getJobLogs', { jobId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to get job logs:', error);
            return [];
        }
    },
    
    async getJobLogsContent(jobId, logFileName) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'getJobLogsContent', {
                jobId,
                logFileName
            });
            return response;
        } catch (error) {
            console.error('Failed to get job logs content:', error);
            throw error;
        }
    },
    
    // Terraform State
    async getStackTerraformState(stackId) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'getStackTfState', { stackId });
            return response;
        } catch (error) {
            console.error('Failed to get Terraform state:', error);
            throw error;
        }
    },
    
    // Configuration Source
    async listConfigurationSourceProviders(compartmentId) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'listConfigurationSourceProviders', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list config source providers:', error);
            return [];
        }
    },
    
    // Templates
    async listTemplates(compartmentId) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'listTemplates', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list templates:', error);
            return [];
        }
    },
    
    async getTemplate(templateId) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'getTemplate', { templateId });
            return response;
        } catch (error) {
            console.error('Failed to get template:', error);
            throw error;
        }
    },
    
    // Private Endpoints
    async listPrivateEndpoints(compartmentId) {
        try {
            const response = await OCIBridge.call('resourcemanager', 'listPrivateEndpoints', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list private endpoints:', error);
            return [];
        }
    },
    
    // Helper methods
    getJobOperationName(operation) {
        const names = {
            'PLAN': 'Plan',
            'APPLY': 'Apply',
            'DESTROY': 'Destroy',
            'IMPORT': 'Import',
            'REFRESH': 'Refresh'
        };
        return names[operation] || operation;
    },
    
    getJobStatusColor(status) {
        const colors = {
            'ACCEPTED': 'var(--status-info)',
            'IN_PROGRESS': 'var(--status-warning)',
            'FAILED': 'var(--status-critical)',
            'SUCCEEDED': 'var(--status-healthy)',
            'CANCELING': 'var(--status-warning)',
            'CANCELED': 'var(--text-secondary)'
        };
        return colors[status] || 'var(--text-secondary)';
    },
    
    getResourceTypeIcon(type) {
        const icons = {
            'oci_core_instance': '💻',
            'oci_core_vcn': '🌐',
            'oci_core_subnet': '📡',
            'oci_database_autonomous_database': '🗄️',
            'oci_objectstorage_bucket': '🪣',
            'oci_kms_vault': '🔐',
            'oci_functions_function': '⚡',
            'oci_containerengine_cluster': '☸️'
        };
        return icons[type] || '📦';
    },
    
    formatTerraformOutput(output) {
        try {
            const lines = output.split('\n');
            const resources = [];
            let currentResource = null;
            
            for (const line of lines) {
                if (line.includes('will be created')) {
                    const match = line.match(/(\S+)\s+"(\S+)"/);
                    if (match) {
                        resources.push({
                            action: 'create',
                            type: match[1],
                            name: match[2]
                        });
                    }
                } else if (line.includes('will be destroyed')) {
                    const match = line.match(/(\S+)\s+"(\S+)"/);
                    if (match) {
                        resources.push({
                            action: 'destroy',
                            type: match[1],
                            name: match[2]
                        });
                    }
                } else if (line.includes('will be updated')) {
                    const match = line.match(/(\S+)\s+"(\S+)"/);
                    if (match) {
                        resources.push({
                            action: 'update',
                            type: match[1],
                            name: match[2]
                        });
                    }
                }
            }
            
            return resources;
        } catch (e) {
            return [];
        }
    }
};

window.ResourceManagerService = ResourceManagerService;
