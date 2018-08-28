package react.devextreme.grid.mui;

import react.ReactComponent;
import react.ReactNode;
import react.devextreme.grid.Table.TableRowProps;
import react.devextreme.grid.TableHeaderRow.TableHeaderRowCellProps;
import react.devextreme.grid.TableHeaderRow.TableHeaderRowLocalizationMessages;
import react.devextreme.grid.SortingState.SortingDirection;

typedef TableHeaderRowProps<TRow> = {
	/** A component that renders a header cell. */
	@:optional var cellComponent:ReactNodeOf<TableHeaderRowCellProps<TRow>>;

	/** A component that renders a header row. */
	@:optional var rowComponent:ReactNodeOf<TableRowProps<TRow>>;

	/** Specifies whether to render controls that toggle the column's sorting
	 * state. Requires the SortingState dependency. */
	@:optional var showSortingControls:Bool;

	/** Specifies whether to display a button that groups data by column.
	 * Requires the GroupingState dependency. */
	@:optional var showGroupingControls:Bool;

	/** An object that specifies localization messages. */
	@:optional var messages:TableHeaderRowLocalizationMessages;
}

/**
	A plugin that renders the table's header row. The Column's `title` field
	specifies the column's title in the header row.

	The plugin also allows you to manage a column's sorting and grouping state
	and initiate column dragging.
*/
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'TableHeaderRow')
extern class TableHeaderRow<TRow> extends ReactComponentOfProps<TableHeaderRowProps<TRow>> {
	/** A component that renders a header row. */
	public static inline var Row = TableHeaderRowRow;

	/** A component that renders a header cell. */
	public static inline var Cell = TableHeaderRowCell;
}

@:jsRequire('@devexpress/dx-react-grid-material-ui', 'TableHeaderRow.Row')
extern class TableHeaderRowRow extends ReactComponent {}

@:jsRequire('@devexpress/dx-react-grid-material-ui', 'TableHeaderRow.Cell')
extern class TableHeaderRowCell extends ReactComponent {}
