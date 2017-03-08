package jsen;

import npm.jsen.Jsen;
import npm.jsonschemarefparser.RefParser;

class IntTest {
  public static function main() {
    //var schema = getSchema();
    RefParser.dereference(getSchema())
      .then(function(schema : {}) {
        return cleanIds(schema, 0);
      })
      .then(function(schema : {}) {
        trace(haxe.Json.stringify(schema, null, '  '));
        var validator = Jsen.jsen(schema);
        var data = getData();
        trace(haxe.Json.stringify(data, null, '  '));
        var isValid = validator.validate(data);
        trace(isValid);
        trace(validator.errors);
      });
  }

  static function cleanIds(obj : {}, indent: Int) : {} {
    for (key in Reflect.fields(obj)) {
      var spaces = thx.Strings.repeat('    ', indent);
      trace('${spaces}${key}');
      if (key == "id") {
        //trace('${spaces}** deleting id');
        Reflect.deleteField(obj, "id");
      }
      var value = Reflect.field(obj, key);
      if (thx.Types.isAnonymousObject(value)) {
        var cleanValue = cleanIds(value, indent + 1);
        Reflect.setField(obj, key, cleanValue);
      } else if (Std.is(value, Array)) {
        var cleanValues = thx.Arrays.map(cast value, cleanIds.bind(_, indent + 1));
        Reflect.setField(obj, key, cleanValues);
      }
    }
    return obj;
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
      }
      //required: ["data", "appearance", "size", "customize"]
    };
  }

  static function getData() : {} {
    return {
      "datax": {
        "entities": {
          "subjectCompany": "",
          "compsGroups": [
            {
              "compGroupTitle": "",
              "compsGroupItems": [
                ""
              ]
            }
          ]
        },
        "metrics":["PRICE_EARNINGS","SALES","EBITDA_MARGIN","SALES_CAGR_5Y","DEBT_TO_EBITDA","CASH_TO_ASSETS","TOTAL_PAYOUT_RATIO"],

        "endDate": {
          "useLatest": {}
        }
      },
      "appearance": {
        "entitySelection": {
          "showSubject":true,
          "showComps":true
        },
        "sumStats":{
          "compsGroupsSumStats":[],
          "allCompsSumStats":[],
          "showMarket":false
        },
        "entityOrder":{
          "subjectPosition":"inLine",
          "entitySort":"avgRank",
          "sumStatPosition":{
            "asEntity":1,
            "sumStatPosition":"inLine"
          }
        },
        "rankings":{
          "rankLabels":true,
          "avgRankColumn": false
        },
        "labeling": {
          "colLabelsPosition":"atBottom",
          "colLabelsInfo":"twoLines",
          "label":"name",
          "showEntityIndicators":true,
          "showCompGroupIndicators":false
        },
        "coloring":{
          "headerColumnColoring":"solid",
          "highlightSubject":true
        }
      },
      "customize": {
        "customizeText": "",
        "customizeReason": "none"
      },
      "size": {
        "commPlaceholder": {
          "msgLineValue": "noCommentary"
        },
        "width": {
          "sizeValue": "full"
        },
        "height": {
          "sizeValue": "full"
        }
      }
    };
  }
}
