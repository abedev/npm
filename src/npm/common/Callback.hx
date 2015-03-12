package npm.common;

typedef Callback<T> = js.Error -> T -> Void;
typedef Callback2<T1, T2> = js.Error -> T1 -> T2 -> Void;