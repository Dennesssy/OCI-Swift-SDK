/**
 * OCI Tenant Dashboard - Main Application
 */

const OCIDashboard = {
    currentView: 'dashboard',
    currentCategory: null,
    
    init() {
        this.setupEventListeners();
        this.setupNavigation();
        this.loadInitialData();
        this.setupKeyboardShortcuts();
    },
    
    setupEventListeners() {
        // Navigation items
        document.querySelectorAll('.nav-item[data-view], .nav-item[data-category]').forEach(item => {
            item.addEventListener('click', (e) => {
                e.preventDefault();
                
                // Update active state
                document.querySelectorAll('.nav-item').forEach(i => i.classList.remove('active'));
                item.classList.add('active');
                
                // Handle navigation
                const view = item.dataset.view;
                const category = item.dataset.category;
                
                if (view === 'dashboard') {
                    this.showDashboard();
                } else if (category) {
                    this.showCategory(category);
                }
            });
        });
        
        // Top bar actions
        document.getElementById('refreshBtn').addEventListener('click', () => {
            this.refreshAll();
        });
        
        document.getElementById('addCardBtn').addEventListener('click', () => {
            this.showAddCardModal();
        });
        
        document.getElementById('themeToggle').addEventListener('click', () => {
            this.toggleTheme();
        });
        
        // Search
        document.getElementById('searchInput').addEventListener('input', (e) => {
            this.handleSearch(e.target.value);
        });
        
        // View toggle
        document.querySelectorAll('.toggle-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                document.querySelectorAll('.toggle-btn').forEach(b => b.classList.remove('active'));
                btn.classList.add('active');
                this.setLayout(btn.dataset.layout);
            });
        });
        
        // Card actions
        document.addEventListener('cardAction', (e) => {
            this.handleCardAction(e.detail.action, e.detail.cardId);
        });
        
        document.addEventListener('expandCard', (e) => {
            this.expandCard(e.detail.cardId);
        });
        
        document.addEventListener('refreshCard', (e) => {
            this.refreshCardData(e.detail.cardId, e.detail.widget);
        });
    },
    
    setupNavigation() {
        // Update badge counts
        this.updateCategoryCounts();
    },
    
    async updateCategoryCounts() {
        const counts = {
            dev: 8,
            enterprise: 8,
            ai: 4,
            security: 4
        };
        
        document.getElementById('dev-count').textContent = counts.dev;
        document.getElementById('ent-count').textContent = counts.enterprise;
        document.getElementById('ai-count').textContent = counts.ai;
        document.getElementById('sec-count').textContent = counts.security;
    },
    
    showDashboard() {
        this.currentView = 'dashboard';
        this.currentCategory = null;
        document.getElementById('viewTitle').textContent = 'Dashboard';
        CardsSystem.filterByCategory('all');
    },
    
    showCategory(category) {
        this.currentView = 'category';
        this.currentCategory = category;
        
        const titles = {
            dev: 'Developer Services',
            enterprise: 'Enterprise Services',
            ai: 'AI / ML Services',
            security: 'Security Services'
        };
        
        document.getElementById('viewTitle').textContent = titles[category];
        CardsSystem.filterByCategory(category);
    },
    
    async refreshAll() {
        const btn = document.getElementById('refreshBtn');
        btn.querySelector('span').classList.add('animate-spin');
        
        // Refresh all cards
        CardsSystem.dashboardConfig.forEach(config => {
            CardsSystem.refreshCard(config.id);
        });
        
        setTimeout(() => {
            btn.querySelector('span').classList.remove('animate-spin');
        }, 1000);
    },
    
    async refreshCardData(cardId, widgetElement) {
        const handlers = {
            'compute-instances': () => this.loadComputeData(widgetElement),
            'cost-overview': () => this.loadCostData(widgetElement),
            'object-storage': () => this.loadStorageData(widgetElement),
            'vault-keys': () => this.loadVaultData(widgetElement),
            'kubernetes': () => this.loadKubernetesData(widgetElement),
            'databases': () => this.loadDatabaseData(widgetElement),
            'cloud-guard': () => this.loadCloudGuardData(widgetElement),
            'generative-ai': () => this.loadAIData(widgetElement)
        };
        
        const handler = handlers[cardId];
        if (handler) {
            try {
                await handler();
            } catch (error) {
                widgetElement.innerHTML = `
                    <div class="widget-error">
                        <span>⚠️</span>
                        <p>Failed to load data</p>
                    </div>
                `;
            }
        }
    },
    
    // Data loading methods
    async loadComputeData(widget) {
        const data = await OCIBridge.call('core', 'listInstances');
        const running = data.items.filter(i => i.lifecycleState === 'RUNNING').length;
        const total = data.items.length;
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${running}<span class="trend">/ ${total}</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>${running === total ? 'All running' : `${total - running} stopped`}</span>
            </div>
        `;
    },
    
    async loadCostData(widget) {
        const data = await OCIBridge.call('budget', 'getCurrentSpend');
        
        widget.innerHTML = `
            <div class="widget-counter">
                $${data.amount.toFixed(2)}
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>${data.timeRange} - ${data.currency}</span>
            </div>
        `;
    },
    
    async loadStorageData(widget) {
        const data = await OCIBridge.call('objectstorage', 'listBuckets');
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${data.items.length}
            </div>
            <div class="widget-list">
                ${data.items.slice(0, 3).map(bucket => `
                    <div class="widget-list-item">
                        <span>${bucket.name}</span>
                        <span>${bucket.namespace}</span>
                    </div>
                `).join('')}
            </div>
        `;
    },
    
    async loadVaultData(widget) {
        const data = await OCIBridge.call('keymanagement', 'listVaults');
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${data.items.length}
            </div>
            <div class="widget-list">
                ${data.items.map(vault => `
                    <div class="widget-list-item">
                        <span>${vault.displayName}</span>
                        <span class="status-dot"></span>
                    </div>
                `).join('')}
            </div>
        `;
    },
    
    async loadKubernetesData(widget) {
        widget.innerHTML = `
            <div class="widget-counter">
                3<span class="trend">clusters</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>All healthy</span>
            </div>
        `;
    },
    
    async loadDatabaseData(widget) {
        widget.innerHTML = `
            <div class="widget-counter">
                5<span class="trend">databases</span>
            </div>
            <div class="widget-list">
                <div class="widget-list-item">
                    <span>Production ADB</span>
                    <span class="status-dot"></span>
                </div>
                <div class="widget-list-item">
                    <span>MySQL App</span>
                    <span class="status-dot"></span>
                </div>
            </div>
        `;
    },
    
    async loadCloudGuardData(widget) {
        widget.innerHTML = `
            <div class="widget-counter" style="color: var(--status-healthy);">
                0<span class="trend">alerts</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>All secure</span>
            </div>
        `;
    },
    
    async loadAIData(widget) {
        widget.innerHTML = `
            <div class="widget-counter">
                2<span class="trend">endpoints</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>Cohere + LLaMA</span>
            </div>
        `;
    },
    
    handleCardAction(action, cardId) {
        console.log('Handling action:', action, 'for card:', cardId);
        
        // Show toast notification
        this.showToast(`${action} triggered for ${cardId}`);
    },
    
    expandCard(cardId) {
        console.log('Expanding card:', cardId);
        // Navigate to detailed view
        this.showToast(`Opening detailed view for ${cardId}`);
    },
    
    handleSearch(query) {
        const cards = document.querySelectorAll('.card');
        const lowerQuery = query.toLowerCase();
        
        cards.forEach(card => {
            const text = card.textContent.toLowerCase();
            if (text.includes(lowerQuery)) {
                card.style.opacity = '1';
                card.style.transform = 'scale(1)';
            } else {
                card.style.opacity = '0.3';
                card.style.transform = 'scale(0.95)';
            }
        });
        
        if (query === '') {
            cards.forEach(card => {
                card.style.opacity = '1';
                card.style.transform = 'scale(1)';
            });
        }
    },
    
    showAddCardModal() {
        const modal = document.getElementById('cardModal');
        modal.classList.add('active');
        
        // TODO: Populate with available cards
        const available = CardsSystem.getAvailableCards();
        console.log('Available cards:', available);
    },
    
    toggleTheme() {
        const current = document.documentElement.getAttribute('data-theme') || 'dark';
        const next = current === 'dark' ? 'light' : 'dark';
        document.documentElement.setAttribute('data-theme', next);
        localStorage.setItem('oci-theme', next);
    },
    
    setLayout(layout) {
        const grid = document.getElementById('cardsGrid');
        if (layout === 'list') {
            grid.style.gridTemplateColumns = '1fr';
        } else {
            grid.style.gridTemplateColumns = 'repeat(auto-fill, minmax(280px, 1fr))';
        }
    },
    
    setupKeyboardShortcuts() {
        document.addEventListener('keydown', (e) => {
            // Cmd/Ctrl + K for search
            if ((e.metaKey || e.ctrlKey) && e.key === 'k') {
                e.preventDefault();
                document.getElementById('searchInput').focus();
            }
            
            // Esc to close modals
            if (e.key === 'Escape') {
                document.querySelectorAll('.modal.active').forEach(m => {
                    m.classList.remove('active');
                });
            }
            
            // R to refresh
            if (e.key === 'r' && !e.metaKey && !e.ctrlKey) {
                if (document.activeElement.tagName !== 'INPUT') {
                    this.refreshAll();
                }
            }
        });
    },
    
    showToast(message) {
        const toast = document.createElement('div');
        toast.className = 'toast';
        toast.textContent = message;
        toast.style.cssText = `
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: var(--bg-elevated);
            color: var(--text-primary);
            padding: 12px 20px;
            border-radius: 8px;
            box-shadow: var(--shadow-lg);
            z-index: 10000;
            animation: fadeIn 0.3s ease;
        `;
        
        document.body.appendChild(toast);
        
        setTimeout(() => {
            toast.style.opacity = '0';
            toast.style.transition = 'opacity 0.3s';
            setTimeout(() => toast.remove(), 300);
        }, 3000);
    },
    
    async loadInitialData() {
        // Load theme preference
        const savedTheme = localStorage.getItem('oci-theme') || 'dark';
        document.documentElement.setAttribute('data-theme', savedTheme);
    }
};

// Initialize on load
document.addEventListener('DOMContentLoaded', () => {
    OCIDashboard.init();
});

// Expose globally
window.OCIDashboard = OCIDashboard;
