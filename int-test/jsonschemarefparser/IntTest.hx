package jsonschemarefparser;

import js.Promise;

import npm.jsonschemarefparser.RefParser;

class IntTest {
  public static function main() {
    var schema = getSchema();
    RefParser.dereference(schema)
      .then(function(newSchema) {
        trace(haxe.Json.stringify(newSchema, null, '  '));
      });
  }

  static function getSchema() : {} {
    return {
      "type": "object",
      "title": "Chart Options",
      "properties": {
        "data": {
          "type": "object",
          "properties": {
            "test": {
              "type": "string",
              "minLength": 1
            }
          }
        },
        "appearance": {
          "propertyOrder": 2,
          "$ref": "https://cdn-dev.pellucid.com/65bc5c517f5e/src/schemas/components/_compsRanking_appearanceUI.json"
        },
        "size": {
          "propertyOrder": 3,
          "$ref": "https://cdn-dev.pellucid.com/65bc5c517f5e/src/schemas/components/group_chartSize.json"
        },
        "customize": {
          "propertyOrder": 4,
          "$ref": "https://cdn-dev.pellucid.com/65bc5c517f5e/src/schemas/components/wrapper-customize.json"
        }
      },
      required: ["data", "appearance", "size", "customize"]
    };
  }
}
