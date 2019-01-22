package react.devextreme.grid.plugin;

import react.ReactComponent;

typedef SelectionStateProps = {
	/** The initially selected rows in the uncontrolled mode. */
	@:optional var defaultSelection:Array<RowID>;

	/** The selected row’s IDs. */
	@:optional var selection:Array<RowID>;

	/** Handles selection changes. */
	@:optional var onSelectionChange:Array<RowID>->Void;
}

/**
	A plugin that manages the selection state.
*/
@:jsRequire('@devexpress/dx-react-grid', 'SelectionState')
extern class SelectionState extends ReactComponentOfProps<SelectionStateProps> {}
