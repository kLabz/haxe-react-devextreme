package react.devextreme.grid.mui;

import haxe.extern.EitherType;
import react.ReactComponent;
import react.ReactType;
import react.devextreme.grid.PagingPanel.PagingPanelContainerProps;
import react.devextreme.grid.PagingPanel.PagingPanelLocalizationMessages;

typedef PagingPanelProps = {
	/** A component that renders the paging panel. */
	@:optional var containerComponent:ReactTypeOf<PagingPanelContainerProps>;

	/** The page sizes that a user can select. */
	@:optional var pageSizes:Array<Int>;

	/** An object that specifies the localization messages. */
	@:optional var messages:PagingPanelLocalizationMessages;
}

/**
	A plugin that renders the paging panel used for navigation through data
	pages.
*/
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'PagingPanel')
extern class PagingPanel extends ReactComponentOfProps<PagingPanelProps> {}

@:jsRequire('@devexpress/dx-react-grid-material-ui', 'PagingPanel.Container')
@:acceptsMoreProps
extern class PagingPanelContainer extends ReactComponentOfProps<PagingPanelContainerProps> {}
