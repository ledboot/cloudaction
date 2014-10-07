Ext.define("WebManager.store.menuLimitStore", {
	extend : 'Ext.data.TreeStore',
	model : 'WebManager.model.menuLimitModel',
	proxy : {
		type : 'ajax',
		url : '../manager/limitAction_t'
	}
});