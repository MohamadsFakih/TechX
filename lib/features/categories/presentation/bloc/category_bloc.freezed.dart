// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryType category) showSub,
    required TResult Function() showMainCategory,
    required TResult Function(MiniSubCategoryType miniSubCategoryType) getItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryType category)? showSub,
    TResult? Function()? showMainCategory,
    TResult? Function(MiniSubCategoryType miniSubCategoryType)? getItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryType category)? showSub,
    TResult Function()? showMainCategory,
    TResult Function(MiniSubCategoryType miniSubCategoryType)? getItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSubCategory value) showSub,
    required TResult Function(ShowMainCategory value) showMainCategory,
    required TResult Function(GetItems value) getItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSubCategory value)? showSub,
    TResult? Function(ShowMainCategory value)? showMainCategory,
    TResult? Function(GetItems value)? getItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSubCategory value)? showSub,
    TResult Function(ShowMainCategory value)? showMainCategory,
    TResult Function(GetItems value)? getItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowSubCategoryCopyWith<$Res> {
  factory _$$ShowSubCategoryCopyWith(
          _$ShowSubCategory value, $Res Function(_$ShowSubCategory) then) =
      __$$ShowSubCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({SubCategoryType category});
}

/// @nodoc
class __$$ShowSubCategoryCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$ShowSubCategory>
    implements _$$ShowSubCategoryCopyWith<$Res> {
  __$$ShowSubCategoryCopyWithImpl(
      _$ShowSubCategory _value, $Res Function(_$ShowSubCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$ShowSubCategory(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SubCategoryType,
    ));
  }
}

/// @nodoc

class _$ShowSubCategory implements ShowSubCategory {
  const _$ShowSubCategory(this.category);

  @override
  final SubCategoryType category;

  @override
  String toString() {
    return 'CategoryEvent.showSub(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSubCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSubCategoryCopyWith<_$ShowSubCategory> get copyWith =>
      __$$ShowSubCategoryCopyWithImpl<_$ShowSubCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryType category) showSub,
    required TResult Function() showMainCategory,
    required TResult Function(MiniSubCategoryType miniSubCategoryType) getItems,
  }) {
    return showSub(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryType category)? showSub,
    TResult? Function()? showMainCategory,
    TResult? Function(MiniSubCategoryType miniSubCategoryType)? getItems,
  }) {
    return showSub?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryType category)? showSub,
    TResult Function()? showMainCategory,
    TResult Function(MiniSubCategoryType miniSubCategoryType)? getItems,
    required TResult orElse(),
  }) {
    if (showSub != null) {
      return showSub(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSubCategory value) showSub,
    required TResult Function(ShowMainCategory value) showMainCategory,
    required TResult Function(GetItems value) getItems,
  }) {
    return showSub(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSubCategory value)? showSub,
    TResult? Function(ShowMainCategory value)? showMainCategory,
    TResult? Function(GetItems value)? getItems,
  }) {
    return showSub?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSubCategory value)? showSub,
    TResult Function(ShowMainCategory value)? showMainCategory,
    TResult Function(GetItems value)? getItems,
    required TResult orElse(),
  }) {
    if (showSub != null) {
      return showSub(this);
    }
    return orElse();
  }
}

abstract class ShowSubCategory implements CategoryEvent {
  const factory ShowSubCategory(final SubCategoryType category) =
      _$ShowSubCategory;

  SubCategoryType get category;
  @JsonKey(ignore: true)
  _$$ShowSubCategoryCopyWith<_$ShowSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowMainCategoryCopyWith<$Res> {
  factory _$$ShowMainCategoryCopyWith(
          _$ShowMainCategory value, $Res Function(_$ShowMainCategory) then) =
      __$$ShowMainCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowMainCategoryCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$ShowMainCategory>
    implements _$$ShowMainCategoryCopyWith<$Res> {
  __$$ShowMainCategoryCopyWithImpl(
      _$ShowMainCategory _value, $Res Function(_$ShowMainCategory) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowMainCategory implements ShowMainCategory {
  const _$ShowMainCategory();

  @override
  String toString() {
    return 'CategoryEvent.showMainCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowMainCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryType category) showSub,
    required TResult Function() showMainCategory,
    required TResult Function(MiniSubCategoryType miniSubCategoryType) getItems,
  }) {
    return showMainCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryType category)? showSub,
    TResult? Function()? showMainCategory,
    TResult? Function(MiniSubCategoryType miniSubCategoryType)? getItems,
  }) {
    return showMainCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryType category)? showSub,
    TResult Function()? showMainCategory,
    TResult Function(MiniSubCategoryType miniSubCategoryType)? getItems,
    required TResult orElse(),
  }) {
    if (showMainCategory != null) {
      return showMainCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSubCategory value) showSub,
    required TResult Function(ShowMainCategory value) showMainCategory,
    required TResult Function(GetItems value) getItems,
  }) {
    return showMainCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSubCategory value)? showSub,
    TResult? Function(ShowMainCategory value)? showMainCategory,
    TResult? Function(GetItems value)? getItems,
  }) {
    return showMainCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSubCategory value)? showSub,
    TResult Function(ShowMainCategory value)? showMainCategory,
    TResult Function(GetItems value)? getItems,
    required TResult orElse(),
  }) {
    if (showMainCategory != null) {
      return showMainCategory(this);
    }
    return orElse();
  }
}

abstract class ShowMainCategory implements CategoryEvent {
  const factory ShowMainCategory() = _$ShowMainCategory;
}

/// @nodoc
abstract class _$$GetItemsCopyWith<$Res> {
  factory _$$GetItemsCopyWith(
          _$GetItems value, $Res Function(_$GetItems) then) =
      __$$GetItemsCopyWithImpl<$Res>;
  @useResult
  $Res call({MiniSubCategoryType miniSubCategoryType});
}

/// @nodoc
class __$$GetItemsCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$GetItems>
    implements _$$GetItemsCopyWith<$Res> {
  __$$GetItemsCopyWithImpl(_$GetItems _value, $Res Function(_$GetItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? miniSubCategoryType = null,
  }) {
    return _then(_$GetItems(
      null == miniSubCategoryType
          ? _value.miniSubCategoryType
          : miniSubCategoryType // ignore: cast_nullable_to_non_nullable
              as MiniSubCategoryType,
    ));
  }
}

/// @nodoc

class _$GetItems implements GetItems {
  const _$GetItems(this.miniSubCategoryType);

  @override
  final MiniSubCategoryType miniSubCategoryType;

  @override
  String toString() {
    return 'CategoryEvent.getItems(miniSubCategoryType: $miniSubCategoryType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetItems &&
            (identical(other.miniSubCategoryType, miniSubCategoryType) ||
                other.miniSubCategoryType == miniSubCategoryType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, miniSubCategoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetItemsCopyWith<_$GetItems> get copyWith =>
      __$$GetItemsCopyWithImpl<_$GetItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SubCategoryType category) showSub,
    required TResult Function() showMainCategory,
    required TResult Function(MiniSubCategoryType miniSubCategoryType) getItems,
  }) {
    return getItems(miniSubCategoryType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SubCategoryType category)? showSub,
    TResult? Function()? showMainCategory,
    TResult? Function(MiniSubCategoryType miniSubCategoryType)? getItems,
  }) {
    return getItems?.call(miniSubCategoryType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SubCategoryType category)? showSub,
    TResult Function()? showMainCategory,
    TResult Function(MiniSubCategoryType miniSubCategoryType)? getItems,
    required TResult orElse(),
  }) {
    if (getItems != null) {
      return getItems(miniSubCategoryType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSubCategory value) showSub,
    required TResult Function(ShowMainCategory value) showMainCategory,
    required TResult Function(GetItems value) getItems,
  }) {
    return getItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSubCategory value)? showSub,
    TResult? Function(ShowMainCategory value)? showMainCategory,
    TResult? Function(GetItems value)? getItems,
  }) {
    return getItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSubCategory value)? showSub,
    TResult Function(ShowMainCategory value)? showMainCategory,
    TResult Function(GetItems value)? getItems,
    required TResult orElse(),
  }) {
    if (getItems != null) {
      return getItems(this);
    }
    return orElse();
  }
}

abstract class GetItems implements CategoryEvent {
  const factory GetItems(final MiniSubCategoryType miniSubCategoryType) =
      _$GetItems;

  MiniSubCategoryType get miniSubCategoryType;
  @JsonKey(ignore: true)
  _$$GetItemsCopyWith<_$GetItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  /// The bool used to show the sub categories
  bool get showSubCategory => throw _privateConstructorUsedError;

  /// The bool used to show the products
  bool get showMiniItems => throw _privateConstructorUsedError;

  /// The bool used to show the loading bar
  bool get isLoading => throw _privateConstructorUsedError;

  /// The current selected category
  SubCategoryType get category => throw _privateConstructorUsedError;

  /// The current selected sub category
  MiniSubCategoryType get miniSubCategoryType =>
      throw _privateConstructorUsedError;

  /// The list of sub categories
  List<Widget> get selectedList => throw _privateConstructorUsedError;

  /// The products list
  List<MiniItemEntity> get items => throw _privateConstructorUsedError;

  /// Used to catch errors
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {bool showSubCategory,
      bool showMiniItems,
      bool isLoading,
      SubCategoryType category,
      MiniSubCategoryType miniSubCategoryType,
      List<Widget> selectedList,
      List<MiniItemEntity> items,
      String error});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showSubCategory = null,
    Object? showMiniItems = null,
    Object? isLoading = null,
    Object? category = null,
    Object? miniSubCategoryType = null,
    Object? selectedList = null,
    Object? items = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      showSubCategory: null == showSubCategory
          ? _value.showSubCategory
          : showSubCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      showMiniItems: null == showMiniItems
          ? _value.showMiniItems
          : showMiniItems // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SubCategoryType,
      miniSubCategoryType: null == miniSubCategoryType
          ? _value.miniSubCategoryType
          : miniSubCategoryType // ignore: cast_nullable_to_non_nullable
              as MiniSubCategoryType,
      selectedList: null == selectedList
          ? _value.selectedList
          : selectedList // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MiniItemEntity>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showSubCategory,
      bool showMiniItems,
      bool isLoading,
      SubCategoryType category,
      MiniSubCategoryType miniSubCategoryType,
      List<Widget> selectedList,
      List<MiniItemEntity> items,
      String error});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showSubCategory = null,
    Object? showMiniItems = null,
    Object? isLoading = null,
    Object? category = null,
    Object? miniSubCategoryType = null,
    Object? selectedList = null,
    Object? items = null,
    Object? error = null,
  }) {
    return _then(_$_Initial(
      showSubCategory: null == showSubCategory
          ? _value.showSubCategory
          : showSubCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      showMiniItems: null == showMiniItems
          ? _value.showMiniItems
          : showMiniItems // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SubCategoryType,
      miniSubCategoryType: null == miniSubCategoryType
          ? _value.miniSubCategoryType
          : miniSubCategoryType // ignore: cast_nullable_to_non_nullable
              as MiniSubCategoryType,
      selectedList: null == selectedList
          ? _value._selectedList
          : selectedList // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MiniItemEntity>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.showSubCategory = false,
      this.showMiniItems = false,
      this.isLoading = false,
      this.category = SubCategoryType.none,
      this.miniSubCategoryType = MiniSubCategoryType.none,
      final List<Widget> selectedList = const [],
      final List<MiniItemEntity> items = const [],
      this.error = ""})
      : _selectedList = selectedList,
        _items = items;

  /// The bool used to show the sub categories
  @override
  @JsonKey()
  final bool showSubCategory;

  /// The bool used to show the products
  @override
  @JsonKey()
  final bool showMiniItems;

  /// The bool used to show the loading bar
  @override
  @JsonKey()
  final bool isLoading;

  /// The current selected category
  @override
  @JsonKey()
  final SubCategoryType category;

  /// The current selected sub category
  @override
  @JsonKey()
  final MiniSubCategoryType miniSubCategoryType;

  /// The list of sub categories
  final List<Widget> _selectedList;

  /// The list of sub categories
  @override
  @JsonKey()
  List<Widget> get selectedList {
    if (_selectedList is EqualUnmodifiableListView) return _selectedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedList);
  }

  /// The products list
  final List<MiniItemEntity> _items;

  /// The products list
  @override
  @JsonKey()
  List<MiniItemEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Used to catch errors
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'CategoryState(showSubCategory: $showSubCategory, showMiniItems: $showMiniItems, isLoading: $isLoading, category: $category, miniSubCategoryType: $miniSubCategoryType, selectedList: $selectedList, items: $items, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.showSubCategory, showSubCategory) ||
                other.showSubCategory == showSubCategory) &&
            (identical(other.showMiniItems, showMiniItems) ||
                other.showMiniItems == showMiniItems) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.miniSubCategoryType, miniSubCategoryType) ||
                other.miniSubCategoryType == miniSubCategoryType) &&
            const DeepCollectionEquality()
                .equals(other._selectedList, _selectedList) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      showSubCategory,
      showMiniItems,
      isLoading,
      category,
      miniSubCategoryType,
      const DeepCollectionEquality().hash(_selectedList),
      const DeepCollectionEquality().hash(_items),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements CategoryState {
  const factory _Initial(
      {final bool showSubCategory,
      final bool showMiniItems,
      final bool isLoading,
      final SubCategoryType category,
      final MiniSubCategoryType miniSubCategoryType,
      final List<Widget> selectedList,
      final List<MiniItemEntity> items,
      final String error}) = _$_Initial;

  @override

  /// The bool used to show the sub categories
  bool get showSubCategory;
  @override

  /// The bool used to show the products
  bool get showMiniItems;
  @override

  /// The bool used to show the loading bar
  bool get isLoading;
  @override

  /// The current selected category
  SubCategoryType get category;
  @override

  /// The current selected sub category
  MiniSubCategoryType get miniSubCategoryType;
  @override

  /// The list of sub categories
  List<Widget> get selectedList;
  @override

  /// The products list
  List<MiniItemEntity> get items;
  @override

  /// Used to catch errors
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
