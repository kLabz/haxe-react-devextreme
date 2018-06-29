package react.devextreme.grid.mui;

import haxe.extern.EitherType;
import react.ReactComponent;
import react.ReactNode;
import react.devextreme.grid.Grid.Column;
import react.devextreme.grid.Grid.GridRootProps;

typedef GridProps<TRow> = {
	/** An array containing custom data. A user defines the access to this data. Refer to Data Accessors for details. */
	var rows:Array<TRow>;

	/** Specifies for which row fields columns are created. */
	var columns: Array<Column<TRow>>;

	/** Specifies the function used to get a unique row identifier. */
	@:optional var getRowId:TRow->EitherType<Int, String>;

	/** Specifies the function used to get a cell's value. */
	@:optional var getCellValue:TRow->String->Any;

	/** A component that renders the grid root layout. */
	@:optional var rootComponent:ReactNodeOf<GridRootProps>;
}

@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Grid')
extern class Grid<TRow> extends ReactComponentOfProps<GridProps<TRow>> {
	/** A component that renders the grid root layout. */
	public static inline var Root = GridRoot;
}

/** A component that renders the grid root layout. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Grid.Root')
extern class GridRoot<TProps:GridRootProps> extends ReactComponentOfProps<TProps> {}

