package react.devextreme.grid;

import haxe.extern.EitherType;
import react.ReactComponent;
import react.ReactType;

/** Defines the column configuration object. Used to display data stored in a
 * row. */
typedef Column<TRow> = {
	/** Specifies the column name or the name of a row field whose value the
	 * column displays. If the column name does not match any field name,
	 * specify the `getCellValue` function. */
	var name:String;

	/** Specifies the column title. */
	@:optional var title:String;

	/** Specifies the function used to get the column value for a given row. */
	@:optional var getCellValue:TRow->String->Any;
}

/** Describes properties passed to a component that renders the grid root
* layout. */
typedef GridRootProps = {
	/** A React node to be placed in the root layout. */
	@:optional var children:ReactType;
}

typedef GridProps<TRow> = {
	/** An array containing custom data. A user defines the access to this data.
	* Refer to Data Accessors for details. */
	var rows:Array<TRow>;

	/** Specifies for which row fields columns are created. */
	var columns:Array<Column<TRow>>;

	/** Specifies the function used to get a unique row identifier. */
	@:optional var getRowId:TRow->EitherType<Int, String>;

	/** Specifies the function used to get a cell's value. */
	@:optional var getCellValue:TRow->String->Any;

	/** A component that renders the grid root layout. */
	var rootComponent:ReactTypeOf<GridRootProps>;
}

/** The Grid is a root container component designed to process and display data
 * specified via the `rows` property. You can configure columns using the
 * `columns` property. The Grid's functionality  is implemented in several
 * plugins specified as child components. See the plugins concept for details.
 * */
@:jsRequire('@devextreme/dx-react-grid', 'Grid')
extern class Grid<TRow> extends ReactComponentOfProps<GridProps<TRow>> {}

