package jayschema;

import npm.jayschema.Errors;
import npm.jayschema.JaySchema;

class IntTest {
  public static function main() {
    var js = new JaySchema(JaySchema.loaders.http);

    /*
    trace(js.validate('hi', { type: "string" }));
    js.validate('hi', { type: "string" }, function(errs: Null<Array<ValidationError>>) : Void {
      trace(errs);
    });
    js.validate('hi', { type: "boolean" }, function(errs) {
      trace(errs);
    });
    */

    js.validate(getData(), getSchema(), function(errs) {
      trace(errs);
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
      "data": {
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
