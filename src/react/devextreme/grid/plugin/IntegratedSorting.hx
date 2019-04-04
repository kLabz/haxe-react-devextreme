package react.devextreme.grid.plugin;

import react.ReactComponent;

typedef IntegratedSortingProps = {
	/** Additional column properties that the plugin can handle. */
	@:optional var columnExtensions:Array<IntegratedSortingColumnExtension>;
}

typedef IntegratedSortingColumnExtension = {
	/** The name of the column to extend. */
	var columnName:String;

	/**
		A sort compare function.

		See the Sorting guide for more information.
		https://devexpress.github.io/devextreme-reactive/react/grid/docs/guides/sorting/#custom-sorting-algorithm
	 */
	@:optional var compare:Any->Any->Int;
}

/**
	A plugin that manages the selection state.
*/
@:jsRequire('@devexpress/dx-react-grid', 'IntegratedSorting')
extern class IntegratedSorting extends ReactComponentOfProps<IntegratedSortingProps> {}
