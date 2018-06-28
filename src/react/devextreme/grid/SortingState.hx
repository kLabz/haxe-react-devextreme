package react.devextreme.grid;

import react.ReactComponent;

@:enum abstract SortingDirection(String) to String {
	var Asc = 'asc';
	var Desc = 'desc';
}

typedef Sorting = {
	var columnName:String;
	var direction:SortingDirection;
}

@:jsRequire('@devexpress/dx-react-grid', 'SortingState')
extern class SortingState extends ReactComponent {}

