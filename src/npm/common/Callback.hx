package npm.common;

typedef Callback0 = Null<js.Error> -> Void;
typedef Callback<T> = Null<js.Error> -> T -> Void;
typedef Callback1<T> = Callback<T>;
typedef Callback2<T1, T2> = Null<js.Error> -> T1 -> T2 -> Void;
