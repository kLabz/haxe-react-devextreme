package react.devextreme.grid.plugin;

import react.ReactComponent;

typedef PagingStateProps = {
	/** Specifies the current page number. */
	@:optional var currentPage:Int;

	/** Specifies the initial page in uncontrolled mode. */
	@:optional var defaultCurrentPage:Int;

	/** Handles current page changes. */
	@:optional var onCurrentPageChange:Int->Void;

	/**
		Specifies the page size. Set this property to `0` to show all rows on
		a page.
	*/
	@:optional var pageSize:Int;

	/** Specifies the initial page size in uncontrolled mode. */
	@:optional var defaultPageSize:Int;

	/** Handles page size changes. */
	@:optional var onPageSizeChange:Int->Void;
}

/**
	A plugin that manages the paging state.

	It controls the total page count depending on the total row count and the
	specified page size, controls the currently selected page number and changes
	it in response to the corresponding actions.
*/
@:jsRequire('@devexpress/dx-react-grid', 'PagingState')
extern class PagingState extends ReactComponentOfProps<PagingStateProps> {}

