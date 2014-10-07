Ext.define("WebManager.store.menuStore", {
	extend : 'Ext.data.TreeStore',
	model : 'WebManager.model.menuModel',
	proxy : {
		type : 'ajax',
		url : '../manager/treeAction_nt'
	}
});