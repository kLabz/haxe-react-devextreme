package react.devextreme.grid.plugin;

import react.ReactComponent;

@:enum abstract SortingDirection(String) to String {
	var Asc = 'asc';
	var Desc = 'desc';
}

/** Describes the sorting applied to a column */
typedef Sorting = {
	/** Specifies a column's name to which the sorting is applied. */
	var columnName:String;

	/** Specifies a column's sorting order. */
	var direction:SortingDirection;
}

/** Describes additional column properties that the plugin can handle. */
typedef ColumnExtension = {
	/** The name of a column to extend. */
	var columnName:String;

	/** Specifies whether sorting is enabled for a column. */
	var sortingEnabled:Bool;
}

typedef SortingStateProps = {
	/** Specifies the applied sorting. */
	@:optional var sorting:Array<Sorting>;

	/** Specifies initial sorting in the uncontrolled mode. */
	@:optional var defaultSorting:Array<Sorting>;

	/** Specifies whether sorting is enabled for all columns. */
	@:optional var columnSortingEnabled:Bool;

	/** Additional column properties that the plugin can handle. */
	@:optional var columnExtensions:Array<ColumnExtension>;

	/** Handles sorting changes. */
	@:optional var onSortingChange:Array<Sorting>->Void;
}

/**
	A plugin that manages the sorting state.
	It controls the list of columns that participate in sorting.
*/
@:jsRequire('@devexpress/dx-react-grid', 'SortingState')
extern class SortingState extends ReactComponentOfProps<SortingStateProps> {}

