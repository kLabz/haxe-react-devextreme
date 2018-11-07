package react.devextreme.grid.mui;

import react.ReactComponent;
import react.ReactType;
import react.devextreme.grid.Table.TableColumnExtension;
import react.devextreme.grid.Table.TableDataCellProps;
import react.devextreme.grid.Table.TableDataRowProps;
import react.devextreme.grid.Table.TableNoDataCellProps;
import react.devextreme.grid.Table.TableRowProps;
import react.devextreme.grid.Table.TableCellProps;
import react.devextreme.grid.Table.TableLocalizationMessages;

typedef TableProps<TRow> = {
	/** Additional column properties that the plugin can handle. */
	@:optional var columnExtensions:Array<TableColumnExtension>;

	/** A component that renders a table. */
	@:optional var tableComponent:ReactType;

	/** A component that renders a table head. */
	@:optional var headComponent:ReactType;

	/** A component that renders a table body. */
	@:optional var bodyComponent:ReactType;

	/** A component that renders a table's container. */
	@:optional var containerComponent:ReactType;

	/** A component that renders a table cell. */
	@:optional var cellComponent:ReactTypeOf<TableDataCellProps<TRow>>;

	/** A component that renders a table row. */
	@:optional var rowComponent:ReactTypeOf<TableDataRowProps<TRow>>;

	/** A component that renders a table cell when the table is empty. */
	@:optional var noDataCellComponent:ReactTypeOf<TableNoDataCellProps<TRow>>;

	/** A component that renders a table row when the table is empty. */
	@:optional var noDataRowComponent:ReactTypeOf<TableRowProps<TRow>>;

	/** A component that renders a stub table row if the row type is not
	 * recognized. */
	@:optional var stubRowComponent:ReactTypeOf<TableRowProps<TRow>>;

	/** A component that renders a stub table cell if the cell value is not
	 * provided. */
	@:optional var stubCellComponent:ReactTypeOf<TableCellProps<TRow>>;

	/** A component that renders a stub header cell if the cell value is not
	 * provided. */
	@:optional var stubHeaderCellComponent:ReactTypeOf<TableCellProps<TRow>>;

	/** An object that specifies the localization messages. */
	@:optional var messages:TableLocalizationMessages;
}

/** A plugin that renders Grid data as a table. It contains the Table Row and
 * Table Cell components that can be extended by other plugins and provides
 * ways to customize table rows and columns. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table')
extern class Table<TRow> extends ReactComponentOfProps<TableProps<TRow>> {
	/** A component that renders a table. */
	public static var Table:ReactType;

	/** A component that renders a table head. */
	public static var TableHead:ReactType;

	/** A component that renders a table body. */
	public static var TableBody:ReactType;

	/** A component that renders a table's container. */
	public static var Container:ReactType;

	/** A component that renders a table data cell. */
	public static inline var Cell = TableCell;

	/** A component that renders a table data row. */
	public static inline var Row = TableRow;

	/** A component that renders a table cell when the table is empty. */
	public static inline var NoDataCell = TableNoDataCell;

	/** A component that renders a table row when the table is empty. */
	public static inline var NoDataRow = TableNoDataRow;

	/** A component that renders a stub table row. */
	public static inline var StubRow = TableStubRow;

	/** A component that renders a stub table cell. */
	public static inline var StubCell = TableStubCell;

	/** A component that renders a stub table header cell. */
	public static inline var StubHeaderCell = TableStubHeaderCell;
}

/** A component that renders a table data cell. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.Cell')
@:acceptsMoreProps
extern class TableCell<TRow> extends ReactComponentOfProps<TableDataCellProps<TRow>> {}

/** A component that renders a table data row. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.Row')
@:acceptsMoreProps
extern class TableRow<TRow> extends ReactComponentOfProps<TableDataRowProps<TRow>> {}

/** A component that renders a table cell when the table is empty. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.NoDataCell')
@:acceptsMoreProps
extern class TableNoDataCell<TRow> extends ReactComponentOfProps<TableNoDataCellProps<TRow>> {}

/** A component that renders a table row when the table is empty. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.NoDataRow')
@:acceptsMoreProps
extern class TableNoDataRow<TRow> extends ReactComponentOfProps<TableRowProps<TRow>> {}

/** A component that renders a stub table row. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.StubRow')
@:acceptsMoreProps
extern class TableStubRow<TRow> extends ReactComponentOfProps<TableRowProps<TRow>> {}

/** A component that renders a stub table cell. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.StubCell')
@:acceptsMoreProps
extern class TableStubCell<TRow> extends ReactComponentOfProps<TableCellProps<TRow>> {}

/** A component that renders a stub table header cell. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.StubHeaderCell')
@:acceptsMoreProps
extern class TableStubHeaderCell<TRow> extends ReactComponentOfProps<TableCellProps<TRow>> {}

