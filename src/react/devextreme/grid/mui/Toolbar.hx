package react.devextreme.grid.mui;

import react.ReactComponent;
import react.ReactNode;

import react.devextreme.grid.Toolbar.ToolbarRootProps;

typedef ToolbarProps = {
	/** A component that renders the toolbar root element. */
	@:optional var rootComponent:ReactNodeOf<ToolbarRootProps>;
}

/** A plugin that renders the Grid toolbar. */
@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Toolbar')
extern class Toolbar extends ReactComponentOfProps<ToolbarProps> {
	/** A component that renders the toolbar root element. */
	public static inline var Root = ToolbarRoot;
}

@:jsRequire('@devexpress/dx-react-grid-material-ui', 'Toolbar.Root')
extern class ToolbarRoot extends ReactComponent {}

