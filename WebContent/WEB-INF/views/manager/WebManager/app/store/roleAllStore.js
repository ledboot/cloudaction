Ext.define("WebManager.store.roleStore", {
	extend : 'Ext.data.Store',
	model : 'WebManager.model.roleModel',
	autoLoad:true,
	proxy : {
		type : 'ajax',
		url : '../manager/roleAction_g',
		reader: { root: 'items', totalProperty: 'results' }
	}
});