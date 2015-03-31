package npm.common;

typedef Callback0<T> = js.Error -> Void;
typedef Callback<T> = js.Error -> T -> Void;
typedef Callback1<T> = Callback<T>;
typedef Callback2<T1, T2> = js.Error -> T1 -> T2 -> Void;
