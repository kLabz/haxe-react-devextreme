package react.devextreme.grid;

import haxe.extern.EitherType;
import react.ReactComponent;
import react.ReactNode;
import react.devextreme.grid.Grid.Column;

@:enum abstract TableColumnAlign(String) to String {
	var Left = 'left';
	var Right = 'right';
	var Center = 'center';
}

/** Describes additional column properties that the plugin can handle. */
typedef TableColumnExtension = {
	/** The name of the column to extend. */
	var columnName:String;

	/** The table column width in pixels. */
	@:optional var width:Float;

	/** The table column alignment. */
	@:optional var align:TableColumnAlign;

	/** Specifies whether word wrap is enabled in a column's cells. */
	@:optional var wordWrapEnabled:Bool;
}

/** Describes properties of a table row that the Table plugin renders. */
typedef TableRow<TRow> = {
	/** A unique table row identifier. */
	var key:String;

	/** Specifies the table row type. The specified value defines which cell
	 * template is used to render the row. */
	var type:String;

	/** Specifies the associated row's ID. */
	@:optional var rowId:EitherType<Int, String>;

	/** Specifies the associated row. */
	@:optional var row:TRow;

	/** Specifies the table row height. */
	@:optional var height:Float;
}

/** Describes properties of a table column that the Table plugin renders. */
typedef TableColumn<TRow> = {
	/** A unique table column identifier. */
	var key:String;

	/** Specifies the table column type. The specified value defines which cell
	 * template is used to render the column. */
	var type:String;

	/** Specifies the associated user column. */
	@:optional var column:Column<TRow>;

	/** Specifies the table column width. */
	@:optional var width:Float;

	/** Specifies the table's column alignment. */
	@:optional var align:TableColumnAlign;
}

/** Describes properties passed to a component that renders a generic table
 * cell. */
typedef TableCellProps<TRow> = {
	/** Specifies a table row. */
	var tableRow:TableRow<TRow>;

	/** Specifies a table column. */
	var tableColumn:TableColumn<TRow>;

	/** The count of columns that the root cell element spans. */
	@:optional var colSpan:Int;

	/** The count of rows that the root cell element spans. */
	@:optional var rowSpan:Int;
}

/** Describes properties passed to a component that renders a table cell. */
typedef TableDataCellProps<TRow> = {
	> TableCellProps<TRow>,

	/** Specifies a value to be rendered within the cell. */
	var value:Any;

	/** Specifies the cell's row. */
	var row:TRow;

	/** Specifies the cell's column. */
	var column:Column<TRow>;
}

/** Describes properties passed to a component that renders a table cell when
 * the table is empty. */
typedef TableNoDataCellProps<TRow> = {
	> TableCellProps<TRow>,

	/** Returns the text displayed in a cell when a table is empty. */
	var getMessage:String->String;
}

/** Describes properties passed to a component that renders a generic table
 * row. */
typedef TableRowProps<TRow> = {
	/** A table row. */
	var tableRow:TableRow<TRow>;
	/** A React node used to render a table row. */
	var children:ReactNode;
}

/** Describes properties passed to a component that renders a table row. */
typedef TableDataRowProps<TRow> = {
	> TableRowProps<TRow>,
	/** A row. */
	var row:TRow;
}

typedef TableLocalizationMessages = {
	/** Specifies text shown when the Grid does not contain data. */
	@:optional var noData:String;
}

typedef TableProps<TRow> = {
	/** Additional column properties that the plugin can handle. */
	@:optional var columnExtensions:Array<TableColumnExtension>;

	/** A component that renders a table. */
	var tableComponent:ReactNode;

	/** A component that renders a table head. */
	var headComponent:ReactNode;

	/** A component that renders a table body. */
	var bodyComponent:ReactNode;

	/** A component that renders a table's container. */
	var containerComponent:ReactNode;

	/** A component that renders a table cell. */
	var cellComponent:ReactNodeOf<TableDataCellProps<TRow>>;

	/** A component that renders a table row. */
	var rowComponent:ReactNodeOf<TableDataRowProps<TRow>>;

	/** A component that renders a table cell when the table is empty. */
	var noDataCellComponent:ReactNodeOf<TableNoDataCellProps<TRow>>;

	/** A component that renders a table row when the table is empty. */
	var noDataRowComponent:ReactNodeOf<TableRowProps<TRow>>;

	/** A component that renders a stub table row if the row type is not
	 * recognized. */
	var stubRowComponent:ReactNodeOf<TableRowProps<TRow>>;

	/** A component that renders a stub table cell if the cell value is not
	 * provided. */
	var stubCellComponent:ReactNodeOf<TableCellProps<TRow>>;

	/** A component that renders a stub header cell if the cell value is not
	 * provided. */
	var stubHeaderCellComponent:ReactNodeOf<TableCellProps<TRow>>;

	/** An object that specifies the localization messages. */
	@:optional var messages:TableLocalizationMessages;
}

/** A plugin that renders Grid data as a table. It contains the Table Row and
 * Table Cell components that can be extended by other plugins and provides
 * ways to customize table rows and columns. */
@:jsRequire('@devextreme/dx-react-grid', 'Grid')
extern class Table<TRow> extends ReactComponentOfProps<TableProps<TRow>> {}

