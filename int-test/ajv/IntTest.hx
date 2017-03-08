package ajv;

import npm.Request;
import npm.ajv.Ajv;
import npm.common.Callback;

import thx.Uuid;

class IntTest {
  public static function main() {
    var schema = getSchema();
    var data = getData();

    var ajv = new Ajv({
      loadSchema: loadSchema,
      allErrors: true,
      verbose: true,
      unknownFormats: ["checkbox", "grid", "textarea"]
    });

    trace('ajv.compileAsync');
    ajv.compileAsync(schema, function(err : Null<js.Error>, validate : Dynamic -> Bool) {
      if (err != null) {
        trace('ajv.compileAsync failed');
        trace(err);
      } else {
        trace('ajv.compileAsync success');
        if (validate(data)) {
          trace('validate succeeded!');
        } else {
          trace('validate failed:');
          //trace(ajv);
          trace(ajv.errorsText());
        }
      }
    });
  }

  static function loadSchema(uri : String, callback: Callback<{}>) : Void {
    trace('requesting uri: $uri');
    return Request.get(uri, function(err : Null<js.Error>, response : js.node.http.IncomingMessage, body : npm.request.ResponseBody) : Void {
      var data : Dynamic = haxe.Json.parse(body);
      if (data.id != null) data.id = '${data.id}-${Uuid.create()}'; // make the id unique to get past the ajv unique check
      callback(err, data);
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
          "showSubject":"true",
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
