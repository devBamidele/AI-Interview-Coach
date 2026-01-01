// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_interviews_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserInterviewsState {

 List<UserInterview> get interviews; int get total; int get currentPage; bool get hasNextPage; bool get isLoadingMore;
/// Create a copy of UserInterviewsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInterviewsStateCopyWith<UserInterviewsState> get copyWith => _$UserInterviewsStateCopyWithImpl<UserInterviewsState>(this as UserInterviewsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInterviewsState&&const DeepCollectionEquality().equals(other.interviews, interviews)&&(identical(other.total, total) || other.total == total)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(interviews),total,currentPage,hasNextPage,isLoadingMore);

@override
String toString() {
  return 'UserInterviewsState(interviews: $interviews, total: $total, currentPage: $currentPage, hasNextPage: $hasNextPage, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $UserInterviewsStateCopyWith<$Res>  {
  factory $UserInterviewsStateCopyWith(UserInterviewsState value, $Res Function(UserInterviewsState) _then) = _$UserInterviewsStateCopyWithImpl;
@useResult
$Res call({
 List<UserInterview> interviews, int total, int currentPage, bool hasNextPage, bool isLoadingMore
});




}
/// @nodoc
class _$UserInterviewsStateCopyWithImpl<$Res>
    implements $UserInterviewsStateCopyWith<$Res> {
  _$UserInterviewsStateCopyWithImpl(this._self, this._then);

  final UserInterviewsState _self;
  final $Res Function(UserInterviewsState) _then;

/// Create a copy of UserInterviewsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? interviews = null,Object? total = null,Object? currentPage = null,Object? hasNextPage = null,Object? isLoadingMore = null,}) {
  return _then(_self.copyWith(
interviews: null == interviews ? _self.interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<UserInterview>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInterviewsState].
extension UserInterviewsStatePatterns on UserInterviewsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInterviewsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInterviewsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInterviewsState value)  $default,){
final _that = this;
switch (_that) {
case _UserInterviewsState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInterviewsState value)?  $default,){
final _that = this;
switch (_that) {
case _UserInterviewsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserInterview> interviews,  int total,  int currentPage,  bool hasNextPage,  bool isLoadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInterviewsState() when $default != null:
return $default(_that.interviews,_that.total,_that.currentPage,_that.hasNextPage,_that.isLoadingMore);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserInterview> interviews,  int total,  int currentPage,  bool hasNextPage,  bool isLoadingMore)  $default,) {final _that = this;
switch (_that) {
case _UserInterviewsState():
return $default(_that.interviews,_that.total,_that.currentPage,_that.hasNextPage,_that.isLoadingMore);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserInterview> interviews,  int total,  int currentPage,  bool hasNextPage,  bool isLoadingMore)?  $default,) {final _that = this;
switch (_that) {
case _UserInterviewsState() when $default != null:
return $default(_that.interviews,_that.total,_that.currentPage,_that.hasNextPage,_that.isLoadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _UserInterviewsState extends UserInterviewsState {
  const _UserInterviewsState({required final  List<UserInterview> interviews, required this.total, required this.currentPage, required this.hasNextPage, required this.isLoadingMore}): _interviews = interviews,super._();
  

 final  List<UserInterview> _interviews;
@override List<UserInterview> get interviews {
  if (_interviews is EqualUnmodifiableListView) return _interviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviews);
}

@override final  int total;
@override final  int currentPage;
@override final  bool hasNextPage;
@override final  bool isLoadingMore;

/// Create a copy of UserInterviewsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInterviewsStateCopyWith<_UserInterviewsState> get copyWith => __$UserInterviewsStateCopyWithImpl<_UserInterviewsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInterviewsState&&const DeepCollectionEquality().equals(other._interviews, _interviews)&&(identical(other.total, total) || other.total == total)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_interviews),total,currentPage,hasNextPage,isLoadingMore);

@override
String toString() {
  return 'UserInterviewsState(interviews: $interviews, total: $total, currentPage: $currentPage, hasNextPage: $hasNextPage, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$UserInterviewsStateCopyWith<$Res> implements $UserInterviewsStateCopyWith<$Res> {
  factory _$UserInterviewsStateCopyWith(_UserInterviewsState value, $Res Function(_UserInterviewsState) _then) = __$UserInterviewsStateCopyWithImpl;
@override @useResult
$Res call({
 List<UserInterview> interviews, int total, int currentPage, bool hasNextPage, bool isLoadingMore
});




}
/// @nodoc
class __$UserInterviewsStateCopyWithImpl<$Res>
    implements _$UserInterviewsStateCopyWith<$Res> {
  __$UserInterviewsStateCopyWithImpl(this._self, this._then);

  final _UserInterviewsState _self;
  final $Res Function(_UserInterviewsState) _then;

/// Create a copy of UserInterviewsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? interviews = null,Object? total = null,Object? currentPage = null,Object? hasNextPage = null,Object? isLoadingMore = null,}) {
  return _then(_UserInterviewsState(
interviews: null == interviews ? _self._interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<UserInterview>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
