//
//  YearToDateResponse.swift
//  
//
//  Created by Alex Young on 3/25/22.
//

import Foundation
struct YearToDateResponse {
    static let JSONString = """
    {
      "Header": {
        "Time": "2022-03-25T07:39:38-07:00",
        "ReportName": "BalanceSheet",
        "DateMacro": "this calendar year-to-date",
        "ReportBasis": "Accrual",
        "StartPeriod": "2022-01-01",
        "EndPeriod": "2022-03-25",
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
                                { "value": "1365.40" }
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
                            { "value": "1416.80" }
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
                      { "value": "101719.63" }
                    ]
                  },
                  "type": "Section",
                  "group": "OtherCurrentAssets"
                }
              ]
            },
            "Summary": {
              "ColData": [{ "value": "Total Assets" }, { "value": "101719.63" }]
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
                                      { "value": "1504.88" }
                                    ],
                                    "type": "Data"
                                  }
                                ]
                              },
                              "Summary": {
                                "ColData": [
                                  { "value": "Total Accounts Payable (A/P)" },
                                  { "value": "1504.88" }
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
                                      { "value": "143733.34" }
                                    ],
                                    "type": "Data"
                                  },
                                  {
                                    "ColData": [
                                      { "value": "MasterCard (5756)", "id": "52" },
                                      { "value": "43987.86" }
                                    ],
                                    "type": "Data"
                                  }
                                ]
                              },
                              "Summary": {
                                "ColData": [
                                  { "value": "Total Credit Card" },
                                  { "value": "187721.20" }
                                ]
                              },
                              "type": "Section",
                              "group": "CreditCards"
                            },
                            {
                              "ColData": [
                                { "value": "GST/HST Payable", "id": "63" },
                                { "value": "-3638.98" }
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
                            { "value": "189057.01" }
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
                      { "value": "189057.01" }
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
                          { "value": "-61598.17" }
                        ],
                        "type": "Data"
                      },
                      {
                        "ColData": [
                          { "value": "Profit for the year" },
                          { "value": "-4334.82" }
                        ],
                        "type": "Data",
                        "group": "NetIncome"
                      }
                    ]
                  },
                  "Summary": {
                    "ColData": [
                      { "value": "Total Equity" },
                      { "value": "-87337.38" }
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
                { "value": "101719.63" }
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
