package react.devextreme.grid.mui;

import react.ReactComponent;
import react.ReactNode;
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
	@:optional var tableComponent:ReactNode;

	/** A component that renders a table head. */
	@:optional var headComponent:ReactNode;

	/** A component that renders a table body. */
	@:optional var bodyComponent:ReactNode;

	/** A component that renders a table's container. */
	@:optional var containerComponent:ReactNode;

	/** A component that renders a table cell. */
	@:optional var cellComponent:ReactNodeOf<TableDataCellProps<TRow>>;

	/** A component that renders a table row. */
	@:optional var rowComponent:ReactNodeOf<TableDataRowProps<TRow>>;

	/** A component that renders a table cell when the table is empty. */
	@:optional var noDataCellComponent:ReactNodeOf<TableNoDataCellProps<TRow>>;

	/** A component that renders a table row when the table is empty. */
	@:optional var noDataRowComponent:ReactNodeOf<TableRowProps<TRow>>;

	/** A component that renders a stub table row if the row type is not
	 * recognized. */
	@:optional var stubRowComponent:ReactNodeOf<TableRowProps<TRow>>;

	/** A component that renders a stub table cell if the cell value is not
	 * provided. */
	@:optional var stubCellComponent:ReactNodeOf<TableCellProps<TRow>>;

	/** A component that renders a stub header cell if the cell value is not
	 * provided. */
	@:optional var stubHeaderCellComponent:ReactNodeOf<TableCellProps<TRow>>;

	/** An object that specifies the localization messages. */
	@:optional var messages:TableLocalizationMessages;
}

/** A plugin that renders Grid data as a table. It contains the Table Row and
 * Table Cell components that can be extended by other plugins and provides
 * ways to customize table rows and columns. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table')
extern class Table<TRow> extends ReactComponentOfProps<TableProps<TRow>> {
	/** A component that renders a table. */
	public static var Table:ReactNode;

	/** A component that renders a table head. */
	public static var TableHead:ReactNode;

	/** A component that renders a table body. */
	public static var TableBody:ReactNode;

	/** A component that renders a table's container. */
	public static var Container:ReactNode;

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
extern class TableCell<TRow, TProps:TableDataCellProps<TRow>> extends ReactComponentOfProps<TProps> {}

/** A component that renders a table data row. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.Row')
extern class TableRow<TRow, TProps:TableDataRowProps<TRow>> extends ReactComponentOfProps<TProps> {}

/** A component that renders a table cell when the table is empty. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.NoDataCell')
extern class TableNoDataCell<TRow, TProps:TableNoDataCellProps<TRow>> extends ReactComponentOfProps<TProps> {}

/** A component that renders a table row when the table is empty. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.NoDataRow')
extern class TableNoDataRow<TRow, TProps:TableRowProps<TRow>> extends ReactComponentOfProps<TProps> {}

/** A component that renders a stub table row. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.StubRow')
extern class TableStubRow<TRow, TProps:TableRowProps<TRow>> extends ReactComponentOfProps<TProps> {}

/** A component that renders a stub table cell. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.StubCell')
extern class TableStubCell<TRow, TProps:TableCellProps<TRow>> extends ReactComponentOfProps<TProps> {}

/** A component that renders a stub table header cell. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Table.StubHeaderCell')
extern class TableStubHeaderCell<TRow, TProps:TableCellProps<TRow>> extends ReactComponentOfProps<TProps> {}

