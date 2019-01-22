package react.devextreme.grid.plugin;

import react.ReactComponent;

/**
	A plugin that performs built-in data paging.

	It also changes the current page if the provided one cannot be applied due
	to fewer available pages.
*/
@:jsRequire('@devexpress/dx-react-grid', 'IntegratedPaging')
extern class IntegratedPaging extends ReactComponent {}
