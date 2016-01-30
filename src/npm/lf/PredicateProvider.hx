package npm.lf;

import haxe.extern.EitherType;

extern interface PredicateProvider {
  @:overload(function (operand : Binder) : Predicate {})
  @:overload(function (operand : npm.lf.schema.Column) : Predicate {})
  function eq(operand : ValueLiteral) : Predicate;

  @:overload(function (operand : Binder) : Predicate {})
  @:overload(function (operand : npm.lf.schema.Column) : Predicate {})
  function neq(operand : ValueLiteral) : Predicate;

  @:overload(function (operand : Binder) : Predicate {})
  @:overload(function (operand : npm.lf.schema.Column) : Predicate {})
  function lt(operand : ValueLiteral) : Predicate;

  @:overload(function (operand : Binder) : Predicate {})
  @:overload(function (operand : npm.lf.schema.Column) : Predicate {})
  function lte(operand : ValueLiteral) : Predicate;

  @:overload(function (operand : Binder) : Predicate {})
  @:overload(function (operand : npm.lf.schema.Column) : Predicate {})
  function gt(operand : ValueLiteral) : Predicate;

  @:overload(function (operand : Binder) : Predicate {})
  @:overload(function (operand : npm.lf.schema.Column) : Predicate {})
  function gte(operand : ValueLiteral) : Predicate;

  @:overload(function (operand : Binder) : Predicate {})
  function match(operand : js.RegExp) : Predicate;

  @:overload(function (from : Binder, to : Binder) : Predicate {})
  @:overload(function (from : Binder, to : ValueLiteral) : Predicate {})
  @:overload(function (from : ValueLiteral, to : Binder) : Predicate {})
  function between(from : ValueLiteral, to : ValueLiteral) : Predicate;

  @:native("in")
  @:overload(function (values : Binder) : Predicate {})
  function inValues(values: Array<ValueLiteral>) : Predicate;
  function isNull() : Predicate;
  function isNotNull() : Predicate;
}

typedef ValueLiteral = EitherType<String, EitherType<Float, EitherType<Int, EitherType<Bool, Date>>>>;
