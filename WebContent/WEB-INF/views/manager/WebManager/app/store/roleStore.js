Ext.define("WebManager.store.roleStore", {
	extend : 'Ext.data.Store',
	model : 'WebManager.model.roleModel',
	autoLoad:true,
	pageSize: 20,
	proxy : {
		type : 'ajax',
		url : '../manager/roleAction_s',
		params : {  
        	start : 0,
        	limit : 20
        },
		reader: { root: 'items', totalProperty: 'results' }
	}
});