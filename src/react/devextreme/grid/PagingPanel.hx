package react.devextreme.grid;

import haxe.extern.EitherType;
import react.ReactComponent;
import react.ReactType;

/**
	Describes the container component properties.
*/
typedef PagingPanelContainerProps = {
	/** Specifies the total page count. */
	var totalPages:Int;

	/** Specifies the current page. */
	var currentPage:Int;

	/** Handles the current page changes. */
	var onCurrentPageChange:Int->Void;

	/** Specifies the page size. */
	var pageSize:Int;

	/** Handles the page size changes. */
	var onPageSizeChange:Int->Void;

	/** Specifies the page sizes that a user can select. */
	var pageSizes:Array<Int>;

	/** Returns the paging panel's text. */
	var getMessage:String->String;
}

typedef PagingPanelLocalizationMessages = {
	/** Specifies the page size selector's 'All' item text. */
	@:optional var showAll:String;

	/** Specifies the 'Rows per page' label's text. Available in the "@devexpress/dx-react-grid-material-ui" package. */
	@:optional var rowsPerPage:String;

	/** Specifies the 'Row count' text template. */
	@:optional var info:EitherType<String, {from:Int, to:Int, count:Int}->String>;
}

typedef PagingPanelProps = {
	/** A component that renders the paging panel. */
	var containerComponent:ReactTypeOf<PagingPanelContainerProps>;

	/** The page sizes that a user can select. */
	@:optional var pageSizes:Array<Int>;

	/** An object that specifies the localization messages. */
	@:optional var messages:PagingPanelLocalizationMessages;
}

/**
	A plugin that renders the paging panel used for navigation through data
	pages.
*/
@:jsRequire('@devextreme/dx-react-grid', 'PagingPanel')
extern class PagingPanel extends ReactComponentOfProps<PagingPanelProps> {}
