Ext.define("WebManager.store.adminStore", {
	extend : 'Ext.data.Store',
	model : 'WebManager.model.adminModel',
	autoLoad:true,
	pageSize: 20,
	groupField: 'role_id',
	proxy : {
		type : 'ajax',
		url : '../manager/muserAction_s',
		params : {  
        	start : 0,
        	limit : 20
        },
		reader: {
			root: 'items',
			totalProperty: 'results'
		}
	}
});