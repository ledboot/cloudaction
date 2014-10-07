Ext.define('WebManager.controller.Main', {
	extend : 'Ext.app.Controller',
	alias: 'widget.Main',
	views: ['Viewport'],
	onLaunch:function(){
		this.isLogin();
	},
	init: function() {
		this.control({
	      	'WebLogin button[action=login]': {
	        	click: this.login
	      	},
	      	'menuTree tool[action=out]': {
	        	click: this.outLogin
	      	},
	      	'menuTree': {
	        	itemclick: this.changePage
	      	}
	    });
	},
	changePage:function(view, record, item, index, e){
		if(record.data.leaf){
			var mainTabPanel = Ext.getCmp('main_panel');
			var tab = mainTabPanel.getComponent("tab_"+record.data.id);
			if(!tab){
				if(record.data.isold){
					tab = Ext.create('Ext.panel.Panel',{
						title:record.data.text,
						id:"tab_"+record.data.id,
						frame:false,
						border:false,
						closable:true,
						html:'<iframe frameborder="0" width="100%" height="100%" src="../manager/'+record.data.url+'"/>'
					});
				}else{
					try{
						tab = Ext.create(record.data.obj,{
							title:record.data.text,
							id:"tab_"+record.data.id,
							frame:false,
							region : 'center',
							border:false,
							closable:true,
							parentItem:item
						});
					}catch (err){
						Ext.example.msg('Fail', '<b>'+record.data.obj+'</b> 对象不存在<br/>异常原因:'+err,'fail');
					}
				}
				mainTabPanel.add(tab);
			}
			mainTabPanel.setActiveTab(tab);
		}
	},
	login:function(button){
		var form = button.up('form').getForm();
		form.submit({
        	waitMsg : 'Log in...',
        	success : function(form, action) {
				loginwin.close();
				Ext.getCmp("panelAll").add(Ext.create("WebManager.view.WebMain"));
        	},
            failure : function(form, action) {
            	Ext.Msg.alert("Failure",action.result.info);
            	Ext.get("mcode").dom.src = "../codeAction_code?code="+Math.random();
            	form.reset();
            }
        });
	},
	isLogin:function(){
		loginwin = Ext.create("WebManager.view.WebLogin");
		Ext.Ajax.request({
        	url: '../mloginAction_isLogin',
            method: 'POST',
            success: function (response, options) {
				var obj=Ext.decode(response.responseText);
				if(obj.success){
					loginwin.close();
					Ext.getCmp("panelAll").add(Ext.create("WebManager.view.WebMain"));
				}else{
					Ext.getCmp("panelAll").remove('WebMain');
					loginwin.show();
				}
            }
        });
	},
	outLogin:function(button){
		Ext.Ajax.request({
        	url: '../mloginAction_outLogin',
            method: 'POST',
            success: function (response, options) {
				var obj=Ext.decode(response.responseText);
				if(obj.success){
					Ext.getCmp("panelAll").remove('WebMain');
					loginwin = Ext.create("WebManager.view.WebLogin");
					loginwin.show();
                }
            }
        });
	}
});
