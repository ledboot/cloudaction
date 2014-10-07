Ext.onReady(function(){
	Ext.Loader.setConfig({enabled: true});
	Ext.get('loading').setStyle('display','none');
	Ext.application({
		name: 'WebManager',
		appFolder: 'app',
		controllers: ['Main'],
		autoCreateViewport: true
	});
});