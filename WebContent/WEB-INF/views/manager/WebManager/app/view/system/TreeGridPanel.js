Ext.define('WebManager.view.system.TreeGridPanel' ,{
	extend: 'Ext.tree.Panel',
	alias: 'widget.treeGridPanel',
	initComponent : function(){
		var me = this;
		var rowEditing = Ext.create('Ext.grid.plugin.RowEditing', {
        	clicksToMoveEditor: 1,
        	autoCancel: true,
        	listeners:{
				beforeedit:function(editor, context, eOpts ){
					if(context.record.data.id==0){
        				Ext.example.msg('Tip', '<b>'+context.record.data.text +'</b> 为系统根节点，不允许编辑该节点','');
        				return false;
        			}
        		}
			}
    	});
		var menuStore = Ext.create('WebManager.store.menuAllStore',{
			autoLoad:false,
			root: {
            	text: "Root",
        		id:0,
        		expanded:false
        	},
        	listeners:{
        		load:function(){
        			//
        		}
        	}
		});
		
		Ext.apply(this,{
			region:"center",
			forceFit:true,
			plugins: [rowEditing],
        	rootVisible: true,
        	autoScroll : true,
        	store: menuStore,
			autoScroll : true,
			selType: 'rowmodel',
			viewConfig: {
	            plugins: {
	                ptype: 'treeviewdragdrop',
	                appendOnly: true
	            },
	            listeners: {
	                drop: function(node, data, dropRec, dropPosition) {
	            		Ext.Ajax.request({
			                params: {
								'mtree.tree_id':data.records[0].getData().id,
								'mtree.parent_id':dropRec.getData().id
			                },  
			                url: '../manager/treeAction_drop',
			                success: function(response) {
			                	Ext.example.msg('Success', '<b>'+data.records[0].getData().text+'</b> 移动到 <b>'+dropRec.getData().text+'</b> 成功','');
		                	}
		            	});
	                },
	            	itemcontextmenu:function(his, record, item, index, e){
    					e.preventDefault();
    					e.stopEvent();
			    		var nodemenu = new Ext.menu.Menu({
			    			border:false,
			                items : [{
			                	text : '添加子集',
			                	iconCls:'add-icon',
			                	handler : function() {
			                		var treeText = new Ext.form.TextField({
			                			emptyText:'子集名称',
			                			allowBlank: false
			                		});
			                		var addMenu = new Ext.menu.Menu({
			                			plain: true,
			                			border:false,
			                			items:[treeText],
			                			buttons:[{
			                				text: '添加',
			                				handler:function(){
			                					if(treeText.isValid()){
				                					Ext.Ajax.request({
										                params: {
															'mtree.parent_id':record.data.id,
															'mtree.tree_name':treeText.getValue(),
															'mtree.is_old':0
										                }, 
										                url: '../manager/treeAction_add',
										                success: function(response) {
										                	addMenu.close();
										                	menuStore.reload();
										                	Ext.example.msg('Success', '<b>'+record.data.text+'</b> 开始添加子集 <b>'+treeText.getValue()+'</b> 成功','');
										                }
										            });
				                				}
			                				}
			                			}]
			                		}).showAt(e.getXY());
			                	} 
			                },{
			                	text:'删除子集',
			                	iconCls:'delete-icon',
			                	handler : function() {
			                		Ext.Msg.show({
     									title:'删除子集?',
     									msg: '你确定要删除 <b>'+record.data.text+'</b> ?',
     									buttons: Ext.Msg.YESNO,
     									icon: Ext.Msg.QUESTION,
     									fn:function(btn){
			                				if(btn=='yes'){
			                					Ext.Ajax.request({
													params: {
														'mtree.tree_id':record.data.id,
												    },  
												    url: '../manager/treeAction_d',
												    success: function(response) {
												    	Ext.example.msg('Success', '<b>'+record.data.text+'</b> 子集删除成功','');
												    	menuStore.reload();
												    }
												});
			                				}
     									}
									});
			                	}
			                }]
			            });
			    		nodemenu.showAt(e.getXY());
	            	}
	            }
        	},
			columns: [{
            	xtype: 'treecolumn',
            	text: '目录名',
            	sortable: false, 
            	dataIndex: 'text',
            	width:300,
            	locked: true,
            	editor: {
               		allowBlank: false
            	}
        	},{
            	text: '对象名',
            	width: 300,
            	sortable: false,
            	dataIndex: 'obj',
            	flex:1,
            	editor: {}
        	},{
            	text: '兼容模式',
            	width: 200,
            	sortable: false,
            	dataIndex: 'isold',
            	align:'center',
            	flex:1,
            	editor: {
        			xtype:'checkbox'
            	}
        	},{
            	text: '旧地址',
            	width: 200,
            	sortable: false,
            	dataIndex: 'hrefs',
            	align:'center',
            	flex:1,
            	editor: {}
        	}],
        	listeners:{
				edit:function(editor, e){
					Ext.Ajax.request({
		                params: {
							'mtree.tree_id':e.record.data.id,
							'mtree.tree_name':e.record.data.text,
							'mtree.obj_name':e.record.data.obj,
							'mtree.is_old':e.record.data.isold==true?1:0,
							'mtree.tree_url':e.record.data.hrefs
		                },  
		                url: '../manager/treeAction_u',
		                success: function(response) {
		                	Ext.example.msg('Success', '修改 <b>'+e.record.data.text+'</b> 成功','');
		                }
		            });
				}
        	}
		});
		me.expandAll();
		this.callParent(arguments);
	}
});