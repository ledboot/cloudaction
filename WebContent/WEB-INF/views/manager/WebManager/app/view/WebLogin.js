Ext.define('WebManager.view.WebLogin' ,{
	extend: 'Ext.window.Window',
	alias : 'widget.WebLogin',
	id:'WebLogin',
	initComponent : function(){
		Ext.apply(this,{
			labelAlign: "left",
		    border:false,
		    frame:true,
		    autoScroll: false,
		    closable:false,
		    resizable:false,
		    title: "欢迎使用AMSS - 请登陆",
		    layout:'border',
		    width:340,
		    height:220,
		    modal:true,
		    items:[{
		    	xtype:'form',
		    	url: "../mloginAction_l",
		    	region:'center',
		    	border:false,
		    	bodyPadding: 30,
		    	items:[{
					xtype:'textfield',
					name: 'username',
		            emptyText:'员工账号',
		            allowBlank: false,
		            anchor: '100%',
		            fieldCls :'user',
		            minLength: 5,
		            minLengthText:"账号不得少于5个字符",
		            blankText:"请输入账号"
				},{
					xtype:'textfield',
					name: 'userpass',
					emptyText:'密码',
		            inputType: 'password',
		            anchor: '100%',
		            allowBlank: false,
		            fieldCls :'key',
		            minLength: 6,
		            minLengthText:"密码不得少于6个字符",
		            blankText:"请输入密码"
				},{
					xtype:'panel',
					layout:"column",
		 			frame:false,
		 			border:false,
		 			items:[{
		 				xtype:'textfield',
		 				name: 'code',
		 				emptyText:'验证码',
			            allowBlank: false,
			            fieldCls :'rand',
			            width:190,
			            minLength: 4,
			            blankText:"请输入验证码",
			            minLengthText:"验证码不得少于4个字符"
		 			},{
			        	xtype: "image",
			        	id :"mcode",
			        	src : "../codeAction_code",
			        	title:"点击重新获取验证码",
			        	style:"cursor:pointer;padding-left:4px;padding-top:3px;",
				        listeners: {
					        click: {
					            element: 'el', 
					            fn: function(){
				        			Ext.get("mcode").dom.src = "../codeAction_code?code="+Math.random();
				        		}
					        }
					    }
		 			}]
				}],
				buttons:[{
			    	text: '登 陆',
			    	width:150,
		        	formBind: true,
		        	disabled: true,
		        	action:'login'
			    }]
		   	}]
		});
    	this.callParent(arguments);
    }
});
