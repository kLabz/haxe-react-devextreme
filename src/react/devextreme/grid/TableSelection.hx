package react.devextreme.grid;

import react.ReactComponent;
import react.ReactType;
import react.devextreme.grid.Table.TableCellProps;

/**
	Describes properties passed to a component that renders a cell containing
	the Select All checkbox.
*/
typedef TableSelectionHeaderCellProps<TRow> = {
	> TableCellProps<TRow>,

	/** Indicates if there are no rows that can be selected. */
	var disabled:Bool;

	/** Indicates whether all the rows available for selection are selected. */
	var allSelected:Bool;

	/**
		Indicates whether at least one but not all rows available for selection
		are selected.
	*/
	var someSelected:Bool;

	/** Toggles the Select All checkbox state. */
	var onToggle:?Bool->Void;
}

/**
	Describes properties passed to a component that renders a cell containing a
	selection checkbox.
*/
typedef TableSelectionCellProps<TRow> = {
	> TableCellProps<TRow>,

	/** A row. */
	var row:TRow;

	/** Indicates whether a row is selected. */
	var selected:Bool;

	/** An event that initiates row selecting or deselecting. */
	var onToggle:Void->Void;
}

typedef TableSelectionProps<TRow> = {
	/**
		Specifies whether to highlight the selected rows. Note that `Table`
		plugin's `rowComponent` is ignored in this case.
	*/
	@:optional var highlightRow:Bool;

	/**
		Specifies whether a user can select/deselect a row by clicking it. Note
		that `Table` plugin's `rowComponent` is ignored in this case.
	*/
	@:optional var selectByRowClick:Bool;

	/**
		Specifies whether to render the Select All checkbox in the header row.
	*/
	@:optional var showSelectAll:Bool;

	/**
		Specifies whether to render the selection column that displays
		selection checkboxes.
	*/
	@:optional var showSelectionColumn:Bool;

	/** A component that renders a selection cell . */
	var cellComponent:ReactTypeOf<TableSelectionCellProps<TRow>>;

	/** A component that renders a cell containing the Select All checkbox. */
	var headerCellComponent:ReactTypeOf<TableSelectionHeaderCellProps<TRow>>;

	/** The selection column's width. */
	var selectionColumnWidth:Float;
}

/**
	A plugin that visualizes table rows' selection state by rendering selection
	checkboxes and highlighting the selected rows.
*/
@:jsRequire('@devextreme/dx-react-grid', 'TableSelection')
extern class TableSelection<TRow> extends ReactComponentOfProps<TableSelectionProps<TRow>> {}
