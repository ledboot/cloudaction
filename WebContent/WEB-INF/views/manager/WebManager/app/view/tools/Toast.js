Ext.define('WebManager.view.tools.Toast', {
	extend:'Ext.Component',
	alias : 'widget.toast',
	initComponent : function(){
		var me = this;
		this.msgCt = null;
		function createBox(t, s ,status){
			if(status=='fail')
	    		return '<div class="msg-'+status+'"><h3>' + t + '</h3><p>' + s + '</p></div>';
	       	return '<div class="msg"><h3>' + t + '</h3><p>' + s + '</p></div>';
		};
		me.msg = function(title, format, status){
	    	if(!this.msgCt)
	        	msgCt = Ext.DomHelper.insertFirst(document.body, {id:'msg-div'}, true);
	    	//var s = Ext.String.format.apply(String, Array.prototype.slice.call(arguments, 1));
	    	var m = Ext.DomHelper.append(this.msgCt, createBox(title, format , status), true);
	    	m.hide();
	    	m.slideIn('t').ghost("t", { delay: 2000, remove: true});
		}
		//this.callParent(arguments);
		me.callParent();
        return me;
	}	
},function(){
    WebManager.view.tools.Toast = new this();
});