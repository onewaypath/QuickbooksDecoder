//
//  CustomDateResponse.swift
//
//
//  Created by Alex Young on 3/25/22.
//

import Foundation
struct CustomDateResponse {
    static let JSONString = """
    {
      "Header": {
        "Time": "2022-03-25T12:05:27-07:00",
        "ReportName": "BalanceSheet",
        "ReportBasis": "Accrual",
        "StartPeriod": "2021-01-01",
        "EndPeriod": "2021-12-31",
        "SummarizeColumnsBy": "Total",
        "Currency": "CAD",
        "Option": [
          { "Name": "AccountingStandard", "Value": "IFRS" },
          { "Name": "NoReportData", "Value": "false" }
        ]
      },
      "Columns": {
        "Column": [
          {
            "ColTitle": "",
            "ColType": "Account",
            "MetaData": [{ "Name": "ColKey", "Value": "account" }]
          },
          {
            "ColTitle": "Total",
            "ColType": "Money",
            "MetaData": [{ "Name": "ColKey", "Value": "total" }]
          }
        ]
      },
      "Rows": {
        "Row": [
          {
            "Header": { "ColData": [{ "value": "Assets" }, { "value": "" }] },
            "Rows": {
              "Row": [
                {
                  "Header": {
                    "ColData": [{ "value": "Current Assets" }, { "value": "" }]
                  },
                  "Rows": {
                    "Row": [
                      {
                        "Header": {
                          "ColData": [
                            { "value": "Cash and Cash Equivalent" },
                            { "value": "" }
                          ]
                        },
                        "Rows": {
                          "Row": [
                            {
                              "ColData": [
                                { "value": "Chequing (-357)", "id": "51" },
                                { "value": "2279.35" }
                              ],
                              "type": "Data"
                            },
                            {
                              "ColData": [
                                {
                                  "value": "One Way Path Legal Services TRUST (-349)",
                                  "id": "53"
                                },
                                { "value": "51.40" }
                              ],
                              "type": "Data"
                            }
                          ]
                        },
                        "Summary": {
                          "ColData": [
                            { "value": "Total Cash and Cash Equivalent" },
                            { "value": "2330.75" }
                          ]
                        },
                        "type": "Section",
                        "group": "BankAccounts"
                      },
                      {
                        "Header": {
                          "ColData": [
                            { "value": "Accounts Receivable (A/R)" },
                            { "value": "" }
                          ]
                        },
                        "Rows": {
                          "Row": [
                            {
                              "ColData": [
                                {
                                  "value": "Accounts Receivable (A/R)",
                                  "id": "71"
                                },
                                { "value": "276.85" }
                              ],
                              "type": "Data"
                            }
                          ]
                        },
                        "Summary": {
                          "ColData": [
                            { "value": "Total Accounts Receivable (A/R)" },
                            { "value": "276.85" }
                          ]
                        },
                        "type": "Section",
                        "group": "AR"
                      },
                      {
                        "ColData": [
                          { "value": "Line of credit to Personal", "id": "90" },
                          { "value": "100025.98" }
                        ],
                        "type": "Data"
                      }
                    ]
                  },
                  "Summary": {
                    "ColData": [
                      { "value": "Total Current Assets" },
                      { "value": "102633.58" }
                    ]
                  },
                  "type": "Section",
                  "group": "OtherCurrentAssets"
                }
              ]
            },
            "Summary": {
              "ColData": [{ "value": "Total Assets" }, { "value": "102633.58" }]
            },
            "type": "Section",
            "group": "TotalAssets"
          },
          {
            "Header": {
              "ColData": [{ "value": "Liabilities and Equity" }, { "value": "" }]
            },
            "Rows": {
              "Row": [
                {
                  "Header": {
                    "ColData": [{ "value": "Liabilities" }, { "value": "" }]
                  },
                  "Rows": {
                    "Row": [
                      {
                        "Header": {
                          "ColData": [
                            { "value": "Current Liabilities" },
                            { "value": "" }
                          ]
                        },
                        "Rows": {
                          "Row": [
                            {
                              "Header": {
                                "ColData": [
                                  { "value": "Accounts Payable (A/P)" },
                                  { "value": "" }
                                ]
                              },
                              "Rows": {
                                "Row": [
                                  {
                                    "ColData": [
                                      {
                                        "value": "Accounts Payable (A/P)",
                                        "id": "84"
                                      },
                                      { "value": "-103.88" }
                                    ],
                                    "type": "Data"
                                  }
                                ]
                              },
                              "Summary": {
                                "ColData": [
                                  { "value": "Total Accounts Payable (A/P)" },
                                  { "value": "-103.88" }
                                ]
                              },
                              "type": "Section",
                              "group": "AP"
                            },
                            {
                              "Header": {
                                "ColData": [
                                  { "value": "Credit Card" },
                                  { "value": "" }
                                ]
                              },
                              "Rows": {
                                "Row": [
                                  {
                                    "ColData": [
                                      {
                                        "value": "Line of Credit from Personal",
                                        "id": "72"
                                      },
                                      { "value": "141684.65" }
                                    ],
                                    "type": "Data"
                                  },
                                  {
                                    "ColData": [
                                      { "value": "MasterCard (5756)", "id": "52" },
                                      { "value": "43855.74" }
                                    ],
                                    "type": "Data"
                                  }
                                ]
                              },
                              "Summary": {
                                "ColData": [
                                  { "value": "Total Credit Card" },
                                  { "value": "185540.39" }
                                ]
                              },
                              "type": "Section",
                              "group": "CreditCards"
                            },
                            {
                              "ColData": [
                                { "value": "GST/HST Payable", "id": "63" },
                                { "value": "-3270.28" }
                              ],
                              "type": "Data"
                            },
                            {
                              "Header": {
                                "ColData": [
                                  { "value": "Payroll Liabilities", "id": "68" },
                                  { "value": "" }
                                ]
                              },
                              "Rows": {
                                "Row": [
                                  {
                                    "ColData": [
                                      { "value": "Federal Taxes", "id": "69" },
                                      { "value": "0.00" }
                                    ],
                                    "type": "Data"
                                  }
                                ]
                              },
                              "Summary": {
                                "ColData": [
                                  { "value": "Total Payroll Liabilities" },
                                  { "value": "0.00" }
                                ]
                              },
                              "type": "Section"
                            },
                            {
                              "ColData": [
                                { "value": "Sales tax Payable", "id": "79" },
                                { "value": "3418.51" }
                              ],
                              "type": "Data"
                            },
                            {
                              "Header": {
                                "ColData": [
                                  { "value": "Trust Accounts", "id": "78" },
                                  { "value": "" }
                                ]
                              },
                              "Rows": {
                                "Row": [
                                  {
                                    "ColData": [
                                      {
                                        "value": "In Trust for Beyond Lucky International Ltd.",
                                        "id": "86"
                                      },
                                      { "value": "51.40" }
                                    ],
                                    "type": "Data"
                                  },
                                  {
                                    "ColData": [
                                      {
                                        "value": "In Trust for Josh Mackey",
                                        "id": "93"
                                      },
                                      { "value": "0.00" }
                                    ],
                                    "type": "Data"
                                  },
                                  {
                                    "ColData": [
                                      {
                                        "value": "in Trust for Kulachet Sangiampongsa (Chain)",
                                        "id": "73"
                                      },
                                      { "value": "0.00" }
                                    ],
                                    "type": "Data"
                                  },
                                  {
                                    "ColData": [
                                      {
                                        "value": "In Trust for Nattanicha Watadumrongcharoen (Som)",
                                        "id": "74"
                                      },
                                      { "value": "0.00" }
                                    ],
                                    "type": "Data"
                                  },
                                  {
                                    "ColData": [
                                      {
                                        "value": "In Trust for Pitichaya Sookmark (Pitch)",
                                        "id": "75"
                                      },
                                      { "value": "0.00" }
                                    ],
                                    "type": "Data"
                                  },
                                  {
                                    "ColData": [
                                      {
                                        "value": "In Trust for Sukitja Whitcomb (Kai)",
                                        "id": "76"
                                      },
                                      { "value": "0.00" }
                                    ],
                                    "type": "Data"
                                  },
                                  {
                                    "ColData": [
                                      {
                                        "value": "In Trust for Than Swe (Eddy)",
                                        "id": "77"
                                      },
                                      { "value": "0.00" }
                                    ],
                                    "type": "Data"
                                  }
                                ]
                              },
                              "Summary": {
                                "ColData": [
                                  { "value": "Total Trust Accounts" },
                                  { "value": "51.40" }
                                ]
                              },
                              "type": "Section"
                            }
                          ]
                        },
                        "Summary": {
                          "ColData": [
                            { "value": "Total Current Liabilities" },
                            { "value": "185636.14" }
                          ]
                        },
                        "type": "Section",
                        "group": "OtherCurrentLiabilities"
                      }
                    ]
                  },
                  "Summary": {
                    "ColData": [
                      { "value": "Total Liabilities" },
                      { "value": "185636.14" }
                    ]
                  },
                  "type": "Section",
                  "group": "Liabilities"
                },
                {
                  "Header": { "ColData": [{ "value": "Equity" }, { "value": "" }] },
                  "Rows": {
                    "Row": [
                      {
                        "ColData": [
                          { "value": "Opening Balance Equity", "id": "54" },
                          { "value": "-21404.39" }
                        ],
                        "type": "Data"
                      },
                      {
                        "ColData": [
                          { "value": "Retained Earnings", "id": "50" },
                          { "value": "-58340.44" }
                        ],
                        "type": "Data"
                      },
                      {
                        "ColData": [
                          { "value": "Profit for the year" },
                          { "value": "-3257.73" }
                        ],
                        "type": "Data",
                        "group": "NetIncome"
                      }
                    ]
                  },
                  "Summary": {
                    "ColData": [
                      { "value": "Total Equity" },
                      { "value": "-83002.56" }
                    ]
                  },
                  "type": "Section",
                  "group": "Equity"
                }
              ]
            },
            "Summary": {
              "ColData": [
                { "value": "Total Liabilities and Equity" },
                { "value": "102633.58" }
              ]
            },
            "type": "Section",
            "group": "TotalLiabilitiesAndEquity"
          }
        ]
      }
    }

    """
}
