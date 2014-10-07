Ext.define("WebManager.store.menuAllStore", {
	extend : 'Ext.data.TreeStore',
	model : 'WebManager.model.menuAllModel',
	proxy : {
		type : 'ajax',
		url : '../manager/treeAction_selectAll'
	}
});