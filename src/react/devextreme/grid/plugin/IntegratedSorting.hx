package react.devextreme.grid.plugin;

import react.ReactComponent;
import react.devextreme.grid.Table.TableColumnExtension;

typedef IntegratedSortingProps = {
	/** Additional column properties that the plugin can handle. */
	@:optional var columnExtensions:Array<TableColumnExtension>;
}

/**
	A plugin that manages the selection state.
*/
@:jsRequire('@devexpress/dx-react-grid', 'IntegratedSorting')
extern class IntegratedSorting extends ReactComponentOfProps<IntegratedSortingProps> {}
