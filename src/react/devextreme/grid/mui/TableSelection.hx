package react.devextreme.grid.mui;

import react.ReactComponent;
import react.ReactType;
import react.devextreme.grid.TableSelection.TableSelectionCellProps;
import react.devextreme.grid.TableSelection.TableSelectionHeaderCellProps;

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
	@:optional var cellComponent:ReactTypeOf<TableSelectionCellProps<TRow>>;

	/** A component that renders a cell containing the Select All checkbox. */
	@:optional var headerCellComponent:ReactTypeOf<TableSelectionHeaderCellProps<TRow>>;

	/** The selection column's width. */
	@:optional var selectionColumnWidth:Float;
}

/**
	A plugin that visualizes table rows' selection state by rendering selection
	checkboxes and highlighting the selected rows.
*/
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'TableSelection')
extern class TableSelection<TRow> extends ReactComponentOfProps<TableSelectionProps<TRow>> {}

/**
	A component that renders a cell with the selection control inside the
	heading row.
*/
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'TableSelection.HeaderCell')
@:acceptsMoreProps
extern class HeaderCell<TRow> extends ReactComponentOfProps<TableSelectionHeaderCellProps<TRow>> {}

/**
	A component that renders a cell with selection control.
*/
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'TableSelection.Cell')
@:acceptsMoreProps
extern class TableSelectionCell<TRow> extends ReactComponentOfProps<TableSelectionCellProps<TRow>> {}
