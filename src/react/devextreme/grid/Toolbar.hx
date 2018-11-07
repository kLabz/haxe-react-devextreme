package react.devextreme.grid;

import react.ReactComponent;
import react.ReactType;

typedef ToolbarRootProps = {
	/** A React node to be placed in the toolbar. */
	@:optional var children:ReactFragment;
}

typedef ToolbarProps = {
	/** A component that renders the toolbar root element. */
	var rootComponent:ReactTypeOf<ToolbarRootProps>;
}

/** A plugin that renders the Grid toolbar. */
@:jsRequire('@devexpress/dx-react-grid', 'Toolbar')
extern class Toolbar extends ReactComponentOf<ToolbarProps> {}

