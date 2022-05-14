import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters-screen';

  final Function _setFilters;
  final Map<String, bool> _currentFilters;

  FiltersScreen(
    this._currentFilters,
    this._setFilters,
  );

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;

  bool _lactoseFree = false;

  bool _vegan = false;

  bool _vegetarian = false;

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function(bool)? updateValue,
  ) {
    return SwitchListTile(
      value: currentValue,
      onChanged: updateValue,
      title: Text(title),
      subtitle: Text(description),
      activeColor: Theme.of(context).colorScheme.secondary,
    );
  }

  @override
  void initState() {
    _glutenFree = widget._currentFilters['gluten'] as bool;
    _lactoseFree = widget._currentFilters['lactose'] as bool;
    _vegan = widget._currentFilters['vegan'] as bool;
    _vegetarian = widget._currentFilters['vegetarian'] as bool;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters Screen'),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                widget._setFilters(
                  {
                    'gluten': _glutenFree,
                    'lactose': _lactoseFree,
                    'vegan': _vegan,
                    'vegetarian': _vegetarian,
                  },
                );
              }),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const Text(
              'Adjust your meal section!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  'Gluten-free',
                  'Only include gluten-free meals',
                  _glutenFree,
                  (newValue) {
                    setState(
                      () {
                        _glutenFree = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Lactose-free',
                  'Only include Lactose-free meals',
                  _lactoseFree,
                  (newValue) {
                    setState(
                      () {
                        _lactoseFree = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Vegetarian',
                  'Only include vegetarian meals',
                  _vegetarian,
                  (newValue) {
                    setState(
                      () {
                        _vegetarian = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Vegan',
                  'Only include vegan meals',
                  _vegan,
                  (newValue) {
                    setState(
                      () {
                        _vegan = newValue;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
