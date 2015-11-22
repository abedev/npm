package npm.lf;

import haxe.extern.EitherType;

interface PredicateProvider {
  // TODO: overload from here through gte with schema.Column and Binder
  function eq(operand : ValueLiteral) : Predicate;
  function neq(operand : ValueLiteral) : Predicate;
  function lt(operand : ValueLiteral) : Predicate;
  function lte(operand : ValueLiteral) : Predicate;
  function gt(operand : ValueLiteral) : Predicate;
  function gte(operand : ValueLiteral) : Predicate;

  // TODO: overload with Binder
  function match(operand : js.RegExp) : Predicate;

  // TODO: overload both with Binder
  function between(from : ValueLiteral, to : ValueLiteral) : Predicate;

  // TODO: overload with Binder
  @:native("in")
  function inValues(values: Array<ValueLiteral>) : Predicate;
  function isNull() : Predicate;
  function isNotNull() : Predicate;
}

typedef ValueLiteral = EitherType<String, EitherType<Float, EitherType<Int, EitherType<Bool, Date>>>>;
