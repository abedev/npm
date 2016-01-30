package npm.lf.schema;

extern interface Table {
  function as(name : String) : Table;

   // value is an object with keys matching column names
  function createRow(value : Dynamic) : npm.lf.Row;
  function getName() : String;
}
