package react.devextreme.grid;

import react.ReactComponent;
import react.ReactType;
import react.devextreme.grid.Grid.Column;
import react.devextreme.grid.Table.TableCellProps;
import react.devextreme.grid.Table.TableRowProps;
import react.devextreme.grid.plugin.SortingState.SortingDirection;

/** Describes properties used to render a table header cell. */
typedef TableHeaderRowCellProps<TRow> = {
	> TableCellProps<TRow>,

	/** A column object associated with a header cell. */
	var column:Column<TRow>;

	/** Specifies whether to render controls that toggle the column's sorting
	 * state. */
	var showSortingControls:Bool;

	/** Specifies whether sorting by a column is enabled. */
	var sortingEnabled:Bool;

	/** Specifies the associated column's sorting direction. */
	@:optional var sortingDirection:SortingDirection;

	/** An event that initiates changing the column sorting direction. Keeps
	 * the current sorting state if `keepOther` is set to true. Cancels sorting
	 * by the current column if `direction` is set to null. */
	var onSort:{?direction:SortingDirection, ?keepOther:Bool}->Void;

	/** Specifies whether to display a button that groups data by column. */
	var showGroupingControls:Bool;

	/** Specifies whether grouping by a column is enabled. */
	var groupingEnabled:Bool;

	/** An event that invokes grouping by the associated column. */
	var onGroup:Void->Void;

	/** Specifies whether table column resizing is enabled. */
	var resizingEnabled:Bool;

	/** An event that initiates column width changing. The initial column width
	 * increases by the `shift` value or decreases if `shift` is negative. */
	var onWidthChange:{shift:Float}->Void;

	/** An event that changes the column width used for preview. The initial
	 * column width increases by the `shift` value or decreases if `shift` is
	 * less than zero. */
	var onWidthDraft:{shift:Float}->Void;

	/** An event that cancels changes of column width used for preview. */
	var onWidthDraftCancel:Void->Void;

	/** Specifies whether drag-and-drop is enabled. */
	var draggingEnabled:Bool;

	/** Returns the text displayed in a sorting control within the header
	 * cell. */
	var getMessage:String->String;
}

typedef TableHeaderRowLocalizationMessages = {
	/** Specifies the 'Sort' hint's text. Available in the
	 * "@devexpress/dx-react-grid-material-ui" package. */
	@:optional var sortingHint:String;
}

typedef TableHeaderRowProps<TRow> = {
	/** A component that renders a header cell. */
	var cellComponent:ReactTypeOf<TableHeaderRowCellProps<TRow>>;

	/** A component that renders a header row. */
	var rowComponent:ReactTypeOf<TableRowProps<TRow>>;

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
	A plugin that renders the table's header row.  The Column's `title` field
	specifies the column's title in the header row.

	The plugin also allows you to manage a column's sorting and grouping state
	and initiate column dragging.
*/
@:jsRequire('@devexpress/dx-react-grid', 'TableHeaderRow')
extern class TableHeaderRow<TRow> extends ReactComponentOfProps<TableHeaderRowProps<TRow>> {}
