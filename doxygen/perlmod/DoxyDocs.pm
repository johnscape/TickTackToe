$doxydocs=
{
  classes => [
    {
      name => 'Area',
      base => [
        {
          name => 'Widget',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
        {
          name => 'Area',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Area'
        },
        {
          name => 'bgColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'borderThickness',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Draw',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Area'
        },
        {
          name => 'frontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'GetValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Area'
        },
        {
          name => 'GetXPostion',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Area'
        },
        {
          name => 'GetYPosition',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Area'
        },
        {
          name => 'Handle',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Area'
        },
        {
          name => 'IsEnabled',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'IsInLine',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Area'
        },
        {
          name => 'IsVisible',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'MarkColour',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Area'
        },
        {
          name => 'OnEvent',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Area'
        },
        {
          name => 'Selected',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'SetBackgroundColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetBorderThickness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetEnable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetEventVoid',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Area'
        },
        {
          name => 'SetFrontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetMarkerColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Area'
        },
        {
          name => 'SetValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Area'
        },
        {
          name => 'SetVisible',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'Value',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Area'
        },
        {
          name => 'Widget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'X',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'XSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'XVal',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Area'
        },
        {
          name => 'Y',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'YSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'YVal',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Area'
        },
        {
          name => '~Area',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Area'
        },
        {
          name => '~Widget',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Widget'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Area',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Létrehoz egy új területet a X vagy O kijelzésére. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az x koordináta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az y koordináta '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => '~Area',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetEventVoid',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Beállítja az eseményt, ami akkor következik be, ha rákattintanak. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'Area*'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Saját magát adja vissza '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'std::function< void(Area *)>'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Beállítja az értékét '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'value'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int A beállítandó érték '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetMarkerColour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A kijelzés színét adja meg. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int A piros érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int A zöld érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int A kék érték '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja az aktuális értékét '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int Az aktuális érték '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetXPostion',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Megadja az x koordinátáját '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int Az x koordináta '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetYPosition',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja az y koordinátáját '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int Az y koordináta '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Draw',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Kirajzolja a widgetet. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual void '
                    }
                  ]
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'Draw'
            }
          },
          {
            kind => 'function',
            name => 'Handle',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Kezeli a widgetet az inputnak megfelelõen. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'ev'
                      }
                    ],
                    doc => [
                      {
                        type => 'url',
                        link => 'structgenv_1_1event',
                        content => 'genv::event'
                      },
                      {
                        type => 'text',
                        content => ' Az input eventje '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual void '
                    }
                  ]
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ev',
                type => 'genv::event'
              }
            ],
            reimplements => {
              name => 'Handle'
            }
          },
          {
            kind => 'function',
            name => 'IsInLine',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy egy koordináta rajta van-e a widgeten. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az x koordináta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az y koordináta '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual bool '
                    }
                  ]
                }
              ]
            },
            type => 'virtual bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ],
            reimplements => {
              name => 'IsInLine'
            }
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'XVal',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Az x koordináta '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'YVal',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Az y koordináta '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'Value',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Az aktuális értéke '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'MarkColour',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A kijelzés színe '
                }
              ]
            },
            type => 'Colour *'
          },
          {
            kind => 'variable',
            name => 'OnEvent',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Az event hatására meghívódó esemény '
                }
              ]
            },
            type => 'std::function< void(Area *)>'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'asd',
      all_members => [
        {
          name => 'asd',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'asd'
        },
        {
          name => '~asd',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'asd'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'asd',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~asd',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::box',
      all_members => [
        {
          name => 'box',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::box'
        },
        {
          name => 'operator()',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::box'
        },
        {
          name => 'vec_x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::box'
        },
        {
          name => 'vec_y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::box'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'box',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator()',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'vec_x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'vec_y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::box_to',
      all_members => [
        {
          name => 'box_to',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::box_to'
        },
        {
          name => 'operator()',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::box_to'
        },
        {
          name => 'pos_x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::box_to'
        },
        {
          name => 'pos_y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::box_to'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'box_to',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'unsigned'
              },
              {
                declaration_name => 'y',
                type => 'unsigned'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator()',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'pos_x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'pos_y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Button',
      base => [
        {
          name => 'Label',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
        {
          name => 'bgColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'borderThickness',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Button',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Button'
        },
        {
          name => 'Draw',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Button'
        },
        {
          name => 'fontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Label'
        },
        {
          name => 'frontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Function',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Button'
        },
        {
          name => 'Handle',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Button'
        },
        {
          name => 'isClicking',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Button'
        },
        {
          name => 'IsEnabled',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'IsInLine',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Button'
        },
        {
          name => 'IsTextFits',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'IsVisible',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Label',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'OnClickColor',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Button'
        },
        {
          name => 'Selected',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'SetBackgroundColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetBorderThickness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetEnable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetFontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'SetFrontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetOnClickColor',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Button'
        },
        {
          name => 'SetText',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'SetVisible',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'Text',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Label'
        },
        {
          name => 'Widget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'X',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'XSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Y',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'YSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => '~Button',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Button'
        },
        {
          name => '~Label',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => '~Widget',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Widget'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Button',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'LÃ©trehoz egy Ãºj gombot. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'url',
                      link => 'class_button',
                      content => 'Button'
                    },
                    {
                      type => 'text',
                      content => '(int x, int y, int xSize, int ySize, std::string text, '
                    }
                  ]
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              },
              {
                declaration_name => 'xSize',
                type => 'int'
              },
              {
                declaration_name => 'ySize',
                type => 'int'
              },
              {
                declaration_name => 'text',
                type => 'std::string'
              },
              {
                declaration_name => 'fv',
                type => 'std::function< void()>'
              }
            ]
          },
          {
            kind => 'function',
            name => '~Button',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Draw',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Kirajzolja a widgetet. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual void '
                    }
                  ]
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'Draw'
            }
          },
          {
            kind => 'function',
            name => 'Handle',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Kezeli a widgetet az inputnak megfelelÃµen. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'ev'
                      }
                    ],
                    doc => [
                      {
                        type => 'url',
                        link => 'structgenv_1_1event',
                        content => 'genv::event'
                      },
                      {
                        type => 'text',
                        content => ' Az input eventje '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual void '
                    }
                  ]
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ev',
                type => 'genv::event'
              }
            ],
            reimplements => {
              name => 'Handle'
            }
          },
          {
            kind => 'function',
            name => 'IsInLine',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy egy koordinÃ¡ta rajta van-e a widgeten. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az x koordinÃ¡ta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az y koordinÃ¡ta '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual bool '
                    }
                  ]
                }
              ]
            },
            type => 'virtual bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ],
            reimplements => {
              name => 'IsInLine'
            }
          },
          {
            kind => 'function',
            name => 'SetOnClickColor',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A kattintÃ¡skor lÃ¡thatÃ³ szÃ­nt vÃ¡ltoztatja meg. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az Ãºj szÃ­n piros Ã©rtÃ©ke '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az Ãºj szÃ­n zÃ¶ld Ã©rtÃ©ke '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az Ãºj szÃ­n kÃ©k Ã©rtÃ©ke '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'Function',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A kattintÃ¡skor meghÃ­vandÃ³ funciÃ³ '
                }
              ]
            },
            type => 'std::function< void()>'
          },
          {
            kind => 'variable',
            name => 'OnClickColor',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A kattintÃ¡skor lÃ¡thatÃ³ szÃ­n '
                }
              ]
            },
            type => 'Colour *'
          },
          {
            kind => 'variable',
            name => 'isClicking',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Le van-e nyomva a gomb '
                }
              ]
            },
            type => 'bool'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::canvas',
      derived => [
        {
          name => 'genv::groutput',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
        {
          name => 'antialiastext',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'blitfrom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'buf',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'call_with_rel',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'canvas',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'canvas',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'canvas',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'cascent',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'cdescent',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'draw_box',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'draw_clr',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'draw_dot',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'draw_line',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'draw_text',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'font',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'font_size',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'load_font',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'loaded_font_file_name',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'move_point',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'open',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'operator=',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'pt_x',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'pt_y',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'refresh',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'save',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'set_antialias',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'set_color',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'sgn',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'transp',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'transparent',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'twidth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => '~canvas',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'genv::canvas'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'canvas',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~canvas',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'canvas',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'w',
                type => 'int'
              },
              {
                declaration_name => 'h',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'canvas',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'c',
                type => 'const canvas &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator=',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'genv::canvas &',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'c',
                type => 'const genv::canvas &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'open',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'width',
                type => 'unsigned'
              },
              {
                declaration_name => 'height',
                type => 'unsigned'
              }
            ]
          },
          {
            kind => 'function',
            name => 'save',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'file',
                type => 'const std::string &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'transparent',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 't',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_color',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'move_point',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'draw_dot',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'draw_line',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'draw_box',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'draw_text',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'str',
                type => 'const std::string &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'blitfrom',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'c',
                type => 'const canvas &'
              },
              {
                declaration_name => 'x1',
                type => 'short'
              },
              {
                declaration_name => 'y1',
                type => 'short'
              },
              {
                declaration_name => 'x2',
                type => 'unsigned short'
              },
              {
                declaration_name => 'y2',
                type => 'unsigned short'
              },
              {
                declaration_name => 'x3',
                type => 'short'
              },
              {
                declaration_name => 'y3',
                type => 'short'
              }
            ]
          },
          {
            kind => 'function',
            name => 'load_font',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'fname',
                type => 'const std::string &'
              },
              {
                declaration_name => 'fontsize',
                type => 'int',
                default_value => '16'
              },
              {
                declaration_name => 'antialias',
                type => 'bool',
                default_value => 'true'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_antialias',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'antialias',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'cascent',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'cdescent',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'twidth',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 's',
                type => 'const std::string &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'refresh',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplemented_by => [
              {
                name => 'refresh'
              }
            ]
          },
          {
            kind => 'function',
            name => 'call_with_rel',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'meth',
                type => 'T'
              },
              {
                declaration_name => 'vec_x',
                type => 'int'
              },
              {
                declaration_name => 'vec_y',
                type => 'int'
              }
            ]
          }
        ]
      },
      protected_methods => {
        members => [
          {
            kind => 'function',
            name => 'sgn',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'const T &'
              }
            ]
          }
        ]
      },
      protected_members => {
        members => [
          {
            kind => 'variable',
            name => 'pt_x',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'short'
          },
          {
            kind => 'variable',
            name => 'pt_y',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'short'
          },
          {
            kind => 'variable',
            name => 'buf',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'SDL_Surface *'
          },
          {
            kind => 'variable',
            name => 'draw_clr',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'transp',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'font',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => '_TTF_Font *'
          },
          {
            kind => 'variable',
            name => 'antialiastext',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'loaded_font_file_name',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::string'
          },
          {
            kind => 'variable',
            name => 'font_size',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::color',
      all_members => [
        {
          name => 'blue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::color'
        },
        {
          name => 'color',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::color'
        },
        {
          name => 'green',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::color'
        },
        {
          name => 'operator()',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::color'
        },
        {
          name => 'red',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::color'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'color',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator()',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'red',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'green',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'blue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Colour',
      all_members => [
        {
          name => 'AdjustColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Colour'
        },
        {
          name => 'B',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Colour'
        },
        {
          name => 'CheckRGB',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Colour'
        },
        {
          name => 'Colour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Colour'
        },
        {
          name => 'Colour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Colour'
        },
        {
          name => 'G',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Colour'
        },
        {
          name => 'GetB',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Colour'
        },
        {
          name => 'GetG',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Colour'
        },
        {
          name => 'GetR',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Colour'
        },
        {
          name => 'R',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Colour'
        },
        {
          name => 'SetColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Colour'
        },
        {
          name => 'SetThisColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Colour'
        },
        {
          name => '~Colour',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Colour'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Colour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Egy szín RGB kódját tárolja, alapértelmezetten fekete '
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Colour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Egy szín RGB kódját tárolja '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'a szín piros kódja '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'a szín zöld kódja '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'a szín kék kódja '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => '~Colour',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'AdjustColour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A színt módosítja a megadott értékekkel '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'a piros módosítás mértéke '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'a zöld módosítás mértéke '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'a kék módosítás mértéke '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetColour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megváltoztatja a tárolt színt az új színre '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'az új piros érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'az új zöld érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'az új kék érték '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetThisColour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'A gout színét átálítja az általa tárolt színre '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetR',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Megadja a tárolt szín piros értékét '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'A tárolt piros érték '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetG',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja a tárolt szín zöld értékét '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'A tárolt zöld érték '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetB',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja a tárolt szín kék értékét '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'A tárolt kék érték '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'CheckRGB',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ellenõrzi, hogy a színek nem-e lógnak ki a 0-255 tartományból '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'R',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A tárolt piros érték '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'G',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A tárolt zöld érték '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'B',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A tárolt kék érték '
                }
              ]
            },
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::event',
      all_members => [
        {
          name => 'button',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::event'
        },
        {
          name => 'keycode',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::event'
        },
        {
          name => 'pos_x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::event'
        },
        {
          name => 'pos_y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::event'
        },
        {
          name => 'time',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::event'
        },
        {
          name => 'type',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::event'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'keycode',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'pos_x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'pos_y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'button',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'time',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'type',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::font',
      all_members => [
        {
          name => 'antialias',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::font'
        },
        {
          name => 'font',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::font'
        },
        {
          name => 'font_name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::font'
        },
        {
          name => 'font_size',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::font'
        },
        {
          name => 'operator()',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::font'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'font',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 's',
                type => 'const std::string &'
              },
              {
                declaration_name => 'fs',
                type => 'int'
              },
              {
                declaration_name => 'a',
                type => 'bool',
                default_value => 'true'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator()',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'font_name',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::string'
          },
          {
            kind => 'variable',
            name => 'font_size',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'antialias',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'GameHandler',
      all_members => [
        {
          name => 'ai',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'Areas',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'DeleteAreas',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'DisableAreas',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'DoAIStep',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'EnableAreas',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'GameHandler',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GameHandler'
        },
        {
          name => 'GameMode',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'handler',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'IsPlayerX',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'IsXTurn',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'level',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'LevelSize',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'LoadGame',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'LoadMainMenu',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'NeedToWin',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'PlaceAt',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'ShowWinWindow',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => 'turnDisplay',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GameHandler'
        },
        {
          name => '~GameHandler',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'GameHandler'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'GameHandler',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Létrehozza a játékkezelõt '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int A képernyõ szélessége '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int A képernyõ magassága '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => '~GameHandler',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'LoadMainMenu',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Betölti a fõmenüt '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'LoadGame',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Betölti a játékot. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'PlaceAt',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Az adott kör alapján a megfelelõ koordinátákra elhelyez egy értéket. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az x koordináta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az y koordináta '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'DeleteAreas',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Tölri az összes "kis négyzetet". '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'DisableAreas',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Deaktiválja az összes "kis négyzetet", nem lehet rájuk kattintani. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'EnableAreas',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Aktiválja az összes "kis négyzetet", lehet rájuk kattintani. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'DoAIStep',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A számítógépes játékos lép egyet. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'ShowWinWindow',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A gyõzelmi ablakot jeleníti meg. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'text'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'std::string A szöveg arról, hogy ki nyert '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'text',
                type => 'std::string'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'IsXTurn',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy X következik-e '
                }
              ]
            },
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'IsPlayerX',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Megadja, hogy az elsõ játékos x-el játszik-e '
                }
              ]
            },
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'handler',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'A grafikai widget kezelõ '
                }
              ]
            },
            type => 'GUIHandler *'
          },
          {
            kind => 'variable',
            name => 'level',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A pálya '
                }
              ]
            },
            type => 'Level *'
          },
          {
            kind => 'variable',
            name => 'GameMode',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A játékmód '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'NeedToWin',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Pontszám a gyõzelemhez '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'LevelSize',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Pálya mérete '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'Areas',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'A játék közben látható négyzeteket itt tárolom '
                }
              ]
            },
            type => 'Area ***'
          },
          {
            kind => 'variable',
            name => 'turnDisplay',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A jelenelgi lépés kijelzõje '
                }
              ]
            },
            type => 'Label *'
          },
          {
            kind => 'variable',
            name => 'ai',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A számítógépes játékos '
                }
              ]
            },
            type => 'MinMax *'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::grinput',
      all_members => [
        {
          name => 'grinput',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'genv::grinput'
        },
        {
          name => 'instance',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::grinput'
        },
        {
          name => 'operator const void *',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::grinput'
        },
        {
          name => 'quit',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'genv::grinput'
        },
        {
          name => 'timer',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::grinput'
        },
        {
          name => 'wait_event',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::grinput'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'wait_event',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'grinput &',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'event &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'timer',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'wait',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator const void *',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'instance',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static grinput &',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'grinput',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'quit',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::groutput',
      base => [
        {
          name => 'genv::canvas',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
        {
          name => 'antialiastext',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'blitfrom',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'buf',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'call_with_rel',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'canvas',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'canvas',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'canvas',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'cascent',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'cdescent',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'draw_box',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'draw_clr',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'draw_dot',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'draw_line',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'draw_text',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'font',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'font_size',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'groutput',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'genv::groutput'
        },
        {
          name => 'instance',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::groutput'
        },
        {
          name => 'load_font',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'loaded_font_file_name',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'move_point',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'movemouse',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::groutput'
        },
        {
          name => 'open',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::groutput'
        },
        {
          name => 'open',
          virtualness => 'non_virtual',
          protection => 'public',
          ambiguity_scope => 'genv::canvas::',
          scope => 'genv::canvas'
        },
        {
          name => 'operator=',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'pt_x',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'pt_y',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'refresh',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'genv::groutput'
        },
        {
          name => 'save',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'set_antialias',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'set_color',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'set_title',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::groutput'
        },
        {
          name => 'sgn',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'showmouse',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::groutput'
        },
        {
          name => 'transp',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'genv::canvas'
        },
        {
          name => 'transparent',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'twidth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => 'y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => '~canvas',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'genv::canvas'
        },
        {
          name => '~groutput',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'genv::groutput'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => '~groutput',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'showmouse',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'toggle',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'movemouse',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'open',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'width',
                type => 'unsigned'
              },
              {
                declaration_name => 'height',
                type => 'unsigned'
              },
              {
                declaration_name => 'fullscreen',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'refresh',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'refresh'
            }
          },
          {
            kind => 'function',
            name => 'set_title',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'title',
                type => 'const std::string &'
              }
            ]
          }
        ]
      },
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'instance',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static groutput &',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'groutput',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'GUIHandler',
      all_members => [
        {
          name => 'AddWidget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GUIHandler'
        },
        {
          name => 'bgColour',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GUIHandler'
        },
        {
          name => 'DeleteAllWidget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GUIHandler'
        },
        {
          name => 'Draw',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GUIHandler'
        },
        {
          name => 'Exit',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GUIHandler'
        },
        {
          name => 'Exiting',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GUIHandler'
        },
        {
          name => 'GetIsRunning',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GUIHandler'
        },
        {
          name => 'GetWidgetNumber',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GUIHandler'
        },
        {
          name => 'GUIHandler',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GUIHandler'
        },
        {
          name => 'Handle',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GUIHandler'
        },
        {
          name => 'isEscapeExit',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GUIHandler'
        },
        {
          name => 'IsRunning',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GUIHandler'
        },
        {
          name => 'RemoveWidget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GUIHandler'
        },
        {
          name => 'RemoveWidget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GUIHandler'
        },
        {
          name => 'SelectedWidget',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GUIHandler'
        },
        {
          name => 'Start',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GUIHandler'
        },
        {
          name => 'Widgets',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GUIHandler'
        },
        {
          name => 'WindowX',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GUIHandler'
        },
        {
          name => 'WindowY',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GUIHandler'
        },
        {
          name => '~GUIHandler',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'GUIHandler'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'GUIHandler',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez az osztály kezeli az összes widgetet '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'xx'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'az ablak szélessége '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'yy'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'az ablak magassága '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'xx',
                type => 'int &'
              },
              {
                declaration_name => 'yy',
                type => 'int &'
              }
            ]
          },
          {
            kind => 'function',
            name => '~GUIHandler',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'AddWidget',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ezzel a függvvénnyel lehet új widgetet hozzádani az osztályhoz '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'w'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'egy mutató a hozzádani kívánt widgetre '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'w',
                type => 'Widget *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RemoveWidget',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Ez a függvény az adott pozícion levõ widgetet távolítja el az osztályból, es törli a képernyõrõl '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'num'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'adja meg a vektorban levõ sorszámát a törölni kívánt vektornak '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'num',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RemoveWidget',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a függvény törli a megadott widgetet az osztályból, ha létezik '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'w'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'a törölni kívánt widget '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'w',
                type => 'Widget *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'DeleteAllWidget',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Start',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a függvény indítja el a fõ ciklust ami kezeli az inputot és a widgeteket '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'exitOnEscape'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'ha igazra van állitva a grafikus felületbõl ki lehet lépni az Esc billentyû lenyomásával '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'timer'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'megadja, hogy hány milliszekundomonként rajzolja újra a képernyõt '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'exitOnEscape',
                type => 'bool'
              },
              {
                declaration_name => 'timer',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Exit',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetIsRunning',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetWidgetNumber',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'Widget *'
              }
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'Draw',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a függvény felel a képernyõ törléséért és a widgetek kirajzolásáért '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Handle',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Ez a függvény kezeli az inputokat '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'ev'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'a megkapott eventet tárolja '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ev',
                type => 'genv::event'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'Widgets',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a vektor tárolja a widgeteket '
                }
              ]
            },
            type => 'std::vector< Widget * >'
          },
          {
            kind => 'variable',
            name => 'SelectedWidget',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Ez az éppen kiválasztott widget sorszámát tárolja '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'bgColour',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez az ablak háttérszínét adja meg '
                }
              ]
            },
            type => 'Colour *'
          },
          {
            kind => 'variable',
            name => 'WindowX',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ebben tárolom az ablak szélességét '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'WindowY',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ebben tárolom az ablak magasságát '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'Exiting',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'IsRunning',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'isEscapeExit',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Ezzel ellenõrzöm, hogy ki kell-e lépni az Esc billentyû lenyomására '
                }
              ]
            },
            type => 'bool'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Label',
      base => [
        {
          name => 'Widget',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'Button',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'NumberInput',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'RadioButton',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'SelectionBox',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
        {
          name => 'bgColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'borderThickness',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Draw',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'fontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Label'
        },
        {
          name => 'frontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Handle',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'IsEnabled',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'IsInLine',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'IsTextFits',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'IsVisible',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Label',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'Selected',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'SetBackgroundColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetBorderThickness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetEnable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetFontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'SetFrontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetText',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'SetVisible',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'Text',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Label'
        },
        {
          name => 'Widget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'X',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'XSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Y',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'YSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => '~Label',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => '~Widget',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Widget'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Label',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Egy '
                },
                {
                  type => 'url',
                  link => 'class_label',
                  content => 'Label'
                },
                {
                  type => 'text',
                  content => ' widgetet hoz lÃ©tre ami egyszerÅ±en egy szÃ¶veget tÃ¡rol Ã©s rajzol ki '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az X pozÃ­ciÃ³t tÃ¡rolja '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az Y pozÃ­ciÃ³t tÃ¡tolja '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'xSize'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az X tengelyen valÃ³ hosszt tÃ¡rolja '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'ySize'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az Y tengelyen valÃ³ magassÃ¡got tÃ¡rolja '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'text'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A kirajzolni kÃ­vÃ¡nt szÃ¶veg '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              },
              {
                declaration_name => 'xSize',
                type => 'int'
              },
              {
                declaration_name => 'ySize',
                type => 'int'
              },
              {
                declaration_name => 'text',
                type => 'std::string'
              }
            ]
          },
          {
            kind => 'function',
            name => '~Label',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Draw',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a fÃ¼ggvÃ©ny felel a widget kirajzolÃ¡sÃ¡Ã©rt '
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'Draw'
            },
            reimplemented_by => [
              {
                name => 'Draw'
              },
              {
                name => 'Draw'
              },
              {
                name => 'Draw'
              },
              {
                name => 'Draw'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Handle',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a fÃ¼ggvÃ©ny kezeli az eventeket (ebben az oszÃ¡lyban Ã¼res, mivel a '
                },
                {
                  type => 'url',
                  link => 'class_label',
                  content => 'Label'
                },
                {
                  type => 'text',
                  content => ' csak szÃ¶veg kijelzsÃ©sÃ©re hasznÃ¡lt) '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'ev'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az aktuÃ¡lis event objektum '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ev',
                type => 'genv::event'
              }
            ],
            reimplements => {
              name => 'Handle'
            },
            reimplemented_by => [
              {
                name => 'Handle'
              },
              {
                name => 'Handle'
              },
              {
                name => 'Handle'
              },
              {
                name => 'Handle'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsInLine',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy az egÃ©r a sajÃ¡t keretein belÃ¼l van-e '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az egÃ©r X pozÃ­ciÃ³ja '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az egÃ©r Y pozÃ­ciÃ³ja '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'virtual bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ],
            reimplements => {
              name => 'IsInLine'
            },
            reimplemented_by => [
              {
                name => 'IsInLine'
              },
              {
                name => 'IsInLine'
              },
              {
                name => 'IsInLine'
              },
              {
                name => 'IsInLine'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsTextFits',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy az Ã©ppen tÃ¡rolt szÃ¶veg elfÃ©r-e a widgeten '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'ElfÃ©r-e a "Text" a widgeten '
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetFontColour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'ÃtÃ¡lÃ­tja az betÅ± szÃ­nÃ©t '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'A betÅ± piros Ã©rtÃ©ke '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A betÅ± zÃ¶ld Ã©rtÃ©ke '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A betÅ± kÃ©k Ã©rtÃ©ke '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetText',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'ÃtÃ¡lÃ­tja az aktuÃ¡lis szÃ¶veget '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'newText'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az Ãºj szÃ¶veg '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'newText',
                type => 'std::string'
              }
            ]
          }
        ]
      },
      protected_members => {
        members => [
          {
            kind => 'variable',
            name => 'fontColor',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A szÃ¶veg szÃ­nÃ©t tÃ¡rolja '
                }
              ]
            },
            type => 'Colour *'
          },
          {
            kind => 'variable',
            name => 'Text',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Az aktuÃ¡lis szÃ¶veget tÃ¡rolja '
                }
              ]
            },
            type => 'std::string'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Level',
      all_members => [
        {
          name => 'CheckArea',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Level'
        },
        {
          name => 'GetLastX',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'GetLastY',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'GetSize',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'GetValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'IsAreaEmpty',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'IsGameWon',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'IsLevelEmpty',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'LastX',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Level'
        },
        {
          name => 'LastY',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Level'
        },
        {
          name => 'Level',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'LevelData',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Level'
        },
        {
          name => 'NeedToWin',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Level'
        },
        {
          name => 'OCount',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Level'
        },
        {
          name => 'Place',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'Recount',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'RemoveValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'Reset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'Size',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Level'
        },
        {
          name => 'ValueToWin',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'WriteCurrentPosition',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Level'
        },
        {
          name => 'XCount',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Level'
        },
        {
          name => '~Level',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Level'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Level',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Létrehoz egy új pályát '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'levelSize'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int A pálya mérete (X*X) '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'win'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int A szükséges pontszám a játék megnyeréséhez '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'levelSize',
                type => 'int'
              },
              {
                declaration_name => 'win',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => '~Level',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja a pálya egy adott koordinátáján levõ mezõ értékét '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az x koordináta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az y koordináta '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int Az x,y koordinátán levõ érték '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'ValueToWin',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Visszatérésként megadja, hogy hány pont kell a gyõzelemhez. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int Pontok száma a gyõzelemhez '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetSize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'A pálya méretét adja meg. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int A pálya mérete '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Place',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A megadott koordinátákra elhelyez egy értéket. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az x koordináta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az y koordináta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'xVal'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'bool Az elhelyezni kívánt érték x-e '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              },
              {
                declaration_name => 'xVal',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsGameWon',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Megadja, hogy megnyerte-e valaki a játékot. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int A játék aktuális állapota számként (-1 nincs vége, 0 döntetlen, 1 x nyert, 2 O nyert) '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'RemoveValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Egy adott koordinátáról tölri az értéket. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az x koordináta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az y koordináta '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsAreaEmpty',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy egy adott koordináta körül üresek-e a mezõk '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az x koordináta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az y koordináta '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'bool Üresek-e a mezõk egy inervalumon belül '
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsLevelEmpty',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy üres-e a pálya. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'bool Üres-e a pálya '
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Recount',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megszámolja, hogy hány X és O van a pályán '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Reset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Visszaállítja a pályát alapértelmezetten üresbe. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetLastX',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Az utoljára módosított mezõ x koordinátáját adja vissza. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int Az utoljára módosított mezõ x koordinátája '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetLastY',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Az utoljára módosított mezõ y koordinátáját adja vissza. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int Az utoljára módosított mezõ y koordinátája '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'WriteCurrentPosition',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'A megadott módon kiírja a pálya aktuális tartalmát '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'writer'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'std::ostream& A kimeneti forrás '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'writer',
                type => 'std::ostream &'
              }
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'CheckArea',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Egy területen ellenõrzi, hogy elég pontja van-e a játékosnak a gyõzelemhez. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int A terület közepének x koordinátája '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int A terület közepének y koordinátája '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'LookFor'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int A játékos, akit figyelni kell '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int Az adott játékos értéke, ha nyert, 0 ha nem '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              },
              {
                declaration_name => 'LookFor',
                type => 'int'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'LevelData',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Maga a pálya adatai '
                }
              ]
            },
            type => 'int **'
          },
          {
            kind => 'variable',
            name => 'Size',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A pálya mérete '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'NeedToWin',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A nyeréshet szükséges pontszám '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'XCount',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'X-ek száma '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'OCount',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'O-k száma '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'LastX',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Az utoljára módosított mezõ X koordinátája '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'LastY',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Az utoljára módosított mezõ Y koordinátája '
                }
              ]
            },
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::line',
      all_members => [
        {
          name => 'line',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::line'
        },
        {
          name => 'operator()',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::line'
        },
        {
          name => 'vec_x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::line'
        },
        {
          name => 'vec_y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::line'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'line',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator()',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'vec_x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'vec_y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::line_to',
      all_members => [
        {
          name => 'line_to',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::line_to'
        },
        {
          name => 'operator()',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::line_to'
        },
        {
          name => 'pos_x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::line_to'
        },
        {
          name => 'pos_y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::line_to'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'line_to',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'unsigned'
              },
              {
                declaration_name => 'y',
                type => 'unsigned'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator()',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'pos_x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'pos_y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'MinMax',
      all_members => [
        {
          name => 'computingLevel',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MinMax'
        },
        {
          name => 'CopyLevels',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MinMax'
        },
        {
          name => 'IsX',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MinMax'
        },
        {
          name => 'MapSize',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MinMax'
        },
        {
          name => 'MaxSteps',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MinMax'
        },
        {
          name => 'MinMax',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MinMax'
        },
        {
          name => 'NextStep',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MinMax'
        },
        {
          name => 'playingLevel',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MinMax'
        },
        {
          name => 'Step',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MinMax'
        },
        {
          name => 'Writer',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MinMax'
        },
        {
          name => '~MinMax',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'MinMax'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'MinMax',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'LÃ©trehoz egy Ãºj MiniMax algoritmus alapjÃ¡n mÅ±kÃ¶dÅ‘ szÃ¡mÃ­tÃ³gÃ©pes jÃ¡tÃ©kost. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'deep'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Ezzel lehet megadni, hogy maximum hÃ¡ny lÃ©pÃ©st szÃ¡moljon elÅ‘re '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'currentLevel'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Level* Ez a aktuÃ¡lis pÃ¡lyÃ¡ra mutatÃ³ mutatÃ³ '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'isX'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'bool Ez adja meg, hogy a gÃ©pi jÃ¡tÃ©kos az X-el jÃ¡tszik-e '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'deep',
                type => 'int'
              },
              {
                declaration_name => 'currentLevel',
                type => 'Level *'
              },
              {
                declaration_name => 'isX',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => '~MinMax',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Step',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a funckciÃ³ szÃ¡molja ki a kÃ¶vetkezÃµ lÃ©pÃ©sÃ©t a MiniMax algoritmusnak. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'NextStep',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a fÃ¼ggvÃ©ny szÃ¡molja a kÃ¶vetkezÃµ lÃ©pÃ©st, Ãºgy hogy rekurzÃ­van meghÃ­vja Ã¶nmagÃ¡t. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'deep'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az aktuÃ¡lis Ã©rtÃ©k, hogy hÃ¡ny lÃ©pÃ©st szÃ¡molt elÃµre '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'isAI'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'bool Megadja, hogy az aktuÃ¡lis lÃ©pÃ©s neki tesz jÃ³t, vagy a jÃ¡tÃ©kosnal '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'url',
                      link => 'struct_step_data',
                      content => 'StepData'
                    },
                    {
                      type => 'text',
                      content => ' Megadja a lÃ©pÃ©s helyÃ©t, Ã©s a maximÃ¡lisan szerzett pontot '
                    }
                  ]
                }
              ]
            },
            type => 'StepData',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'deep',
                type => 'int'
              },
              {
                declaration_name => 'isAI',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CopyLevels',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'IsX',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a vÃ¡ltozÃ³ tÃ¡rolja, hogy a gÃ©p \'X\' szerint jÃ¡tszik-e '
                }
              ]
            },
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'playingLevel',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a mutatÃ³ mutat a valÃ³di pÃ¡lyÃ¡ra, amin a jÃ¡tÃ©k zajlik '
                }
              ]
            },
            type => 'Level *'
          },
          {
            kind => 'variable',
            name => 'computingLevel',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ezen a pÃ¡lyÃ¡n szÃ¡molja a lÃ©pÃ©seit, Ã­gy nem kell az Ã©les pÃ¡lyÃ¡n megtenni a prÃ³balÃ©pÃ©seket '
                }
              ]
            },
            type => 'Level *'
          },
          {
            kind => 'variable',
            name => 'MaxSteps',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a vÃ¡ltozÃ³ adja meg, hogy maximum hÃ¡ny lÃ©pÃ©st szÃ¡molhat elÃµre. MinnÃ©l nagyobb annÃ¡l pontosabban lÃ©p, de a szÃ¡molÃ¡s hosszÃºsÃ¡ga exponenciÃ¡lisan nÃµ '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'MapSize',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a vÃ¡ltozÃ³ tÃ¡rolja a pÃ¡lya mÃ©retÃ©t, Ã­gy nem kell Ãºjra Ã©s Ãºjra lekÃ©rni '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'Writer',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::ofstream'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::move',
      all_members => [
        {
          name => 'move',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::move'
        },
        {
          name => 'operator()',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::move'
        },
        {
          name => 'vec_x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::move'
        },
        {
          name => 'vec_y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::move'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'move',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator()',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'vec_x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'vec_y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::move_to',
      all_members => [
        {
          name => 'move_to',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::move_to'
        },
        {
          name => 'operator()',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::move_to'
        },
        {
          name => 'pos_x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::move_to'
        },
        {
          name => 'pos_y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::move_to'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'move_to',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'unsigned'
              },
              {
                declaration_name => 'y',
                type => 'unsigned'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator()',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'pos_x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'pos_y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'NumberInput',
      base => [
        {
          name => 'Label',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
        {
          name => 'AdjustValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'bgColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'BigStepValue',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NumberInput'
        },
        {
          name => 'borderThickness',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'buttonClickColour',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NumberInput'
        },
        {
          name => 'buttonColour',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NumberInput'
        },
        {
          name => 'buttonDownClicking',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NumberInput'
        },
        {
          name => 'buttonUpClicking',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NumberInput'
        },
        {
          name => 'CheckValue',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NumberInput'
        },
        {
          name => 'CurrentNumber',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NumberInput'
        },
        {
          name => 'Draw',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'fontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Label'
        },
        {
          name => 'frontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'GetCurrentValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'Handle',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'IsEnabled',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'IsInLine',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'IsTextFits',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'IsVisible',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Label',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'MaximumValue',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NumberInput'
        },
        {
          name => 'MinimumValue',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NumberInput'
        },
        {
          name => 'NumberInput',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'OnEvent',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NumberInput'
        },
        {
          name => 'Selected',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'SetBackgroundColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetBigStepValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'SetBorderThickness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetButtonColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'SetButtonOnClickColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'SetEnable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetEventVoid',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'SetFontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'SetFrontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetMaximumValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'SetMinimumValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'SetStepValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'SetText',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'SetValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'SetVisible',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'Step',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => 'StepValue',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NumberInput'
        },
        {
          name => 'Text',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Label'
        },
        {
          name => 'Widget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'X',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'XSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Y',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'YSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => '~Label',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => '~NumberInput',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'NumberInput'
        },
        {
          name => '~Widget',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Widget'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'NumberInput',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Egy számláló widget aminek az értéke két gombbal, valamint a fel és le nyilakkal és a page up, page down gombokkal szabályozható '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'A widget X pozíciója '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A widget Y pozíciója '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'xSize'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A widget hossza (20 pixel még tartozik a végéhez, ezek a gombok) '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'ySize'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A widget magassága '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'startingNumber'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A számláló kezdõ száma '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'maxValue'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A maximum érték, a számláló nem mehet ezen túl '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'minValue'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A minimum érték, a számláló értéke nem lehet ennél kisebb '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              },
              {
                declaration_name => 'xSize',
                type => 'int'
              },
              {
                declaration_name => 'ySize',
                type => 'int'
              },
              {
                declaration_name => 'startingNumber',
                type => 'int'
              },
              {
                declaration_name => 'maxValue',
                type => 'int'
              },
              {
                declaration_name => 'minValue',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => '~NumberInput',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Draw',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez felel a widget kirajzolásáért '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'Draw'
            }
          },
          {
            kind => 'function',
            name => 'Handle',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a függvény kezeli az eventeket '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'ev'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az aktuális event objektum '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ev',
                type => 'genv::event'
              }
            ],
            reimplements => {
              name => 'Handle'
            }
          },
          {
            kind => 'function',
            name => 'IsInLine',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy az egér a saját keretein belül van-e '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az egér X pozíciója '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az egér Y pozíciója '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ],
            reimplements => {
              name => 'IsInLine'
            }
          },
          {
            kind => 'function',
            name => 'SetValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Átálítja a számláló értékét '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'val'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új érték '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'val',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'AdjustValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Hozzáad valamennyit a számláló jelenlegi értékéhez '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'val'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'A hpzzáadandó érték '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'val',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Step',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A számlálót lépteti kis vagy nagy egységnyivel pozitív vagy negatív irányba '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'up'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Ez adja meg, hogy pozitív irányba lép-e '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'bug'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Ez adja meg, hogy kis vagy nagy egységet lép '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'up',
                type => 'bool'
              },
              {
                declaration_name => 'big',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetMaximumValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Új felsõkorlátot ad a widgetnek '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'maximum'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új maximum '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'maximum',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetMinimumValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Új alsókorlátot ad a widgetnek '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'minimum'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új minimum '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'minimum',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetStepValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Átálítja a kis egység értékét (amit egy kattintással lép) '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'step'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új egység értéke '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'step',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetBigStepValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Átálítja a nagy egység értékét (amit a page up/down gombra lép) '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'bigstep'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új egység értéke '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'bigstep',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetButtonColour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Átálítja a gomb színét '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új piros érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új zöld érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új kék érték '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetButtonOnClickColour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Átálítja a gomb kattintáskor látható színét '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új piros érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új zöld érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új kék érték '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetCurrentValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetEventVoid',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'std::function< void(NumberInput *)>'
              }
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'CheckValue',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ellenõrzi, hogy a jelenlegi érték nem-e lóg ki a határokon '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'CurrentNumber',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A jelenlegi érték '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'MaximumValue',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A maximum érték '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'MinimumValue',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A minimum érték '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'StepValue',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A kis lépés mértéke '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'BigStepValue',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A nagy lépés mértéke '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'buttonUpClicking',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Igaz, amennyiben a felfele gombra éppen rákattintanak '
                }
              ]
            },
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'buttonDownClicking',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Igaz, amennyiben a lefele gombra éppen rákattintanak '
                }
              ]
            },
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'OnEvent',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::function< void(NumberInput *)>'
          },
          {
            kind => 'variable',
            name => 'buttonColour',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A gomb színét tárolja '
                }
              ]
            },
            type => 'Colour *'
          },
          {
            kind => 'variable',
            name => 'buttonClickColour',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A gomb kattintáskor látható színét tárolja '
                }
              ]
            },
            type => 'Colour *'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'RadioButton',
      base => [
        {
          name => 'Label',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
        {
          name => 'bgColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'borderThickness',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Draw',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RadioButton'
        },
        {
          name => 'DrawCircle',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RadioButton'
        },
        {
          name => 'fontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Label'
        },
        {
          name => 'frontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'GetSelection',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RadioButton'
        },
        {
          name => 'GetValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RadioButton'
        },
        {
          name => 'Handle',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RadioButton'
        },
        {
          name => 'IsEnabled',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'IsInLine',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RadioButton'
        },
        {
          name => 'IsSelected',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RadioButton'
        },
        {
          name => 'IsTextFits',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'IsVisible',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Label',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'onClickColour',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RadioButton'
        },
        {
          name => 'RadioButton',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RadioButton'
        },
        {
          name => 'Selected',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'SetBackgroundColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetBorderThickness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetEnable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetFontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'SetFrontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetSelection',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RadioButton'
        },
        {
          name => 'SetText',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'SetVisible',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'Text',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Label'
        },
        {
          name => 'Value',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RadioButton'
        },
        {
          name => 'Widget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'X',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'XSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Y',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'YSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => '~Label',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => '~RadioButton',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RadioButton'
        },
        {
          name => '~Widget',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Widget'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'RadioButton',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'LÃ©trehoz egy Ãºj kivÃ¡lasztÃ³ gombot. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az x koordinÃ¡ta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az y koordinÃ¡ta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'buttonSize'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int A gomb sugara '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'text'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'std::string A gomb szÃ¶vege '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'value'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int A gomb Ã©rtÃ©ke '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              },
              {
                declaration_name => 'buttonSize',
                type => 'int'
              },
              {
                declaration_name => 'text',
                type => 'std::string'
              },
              {
                declaration_name => 'value',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => '~RadioButton',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Draw',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Kirajzolja a gombot. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual void '
                    }
                  ]
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'Draw'
            }
          },
          {
            kind => 'function',
            name => 'Handle',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Kezeli a widgetet az inputnak megfelelÃµen. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'ev'
                      }
                    ],
                    doc => [
                      {
                        type => 'url',
                        link => 'structgenv_1_1event',
                        content => 'genv::event'
                      },
                      {
                        type => 'text',
                        content => ' Az input eventje '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual void '
                    }
                  ]
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ev',
                type => 'genv::event'
              }
            ],
            reimplements => {
              name => 'Handle'
            }
          },
          {
            kind => 'function',
            name => 'IsInLine',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy egy koordinÃ¡ta rajta van-e a widgeten. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az x koordinÃ¡ta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az y koordinÃ¡ta '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual bool '
                    }
                  ]
                }
              ]
            },
            type => 'virtual bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ],
            reimplements => {
              name => 'IsInLine'
            }
          },
          {
            kind => 'function',
            name => 'SetSelection',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'BeÃ¡llÃ­tja, hogy ki van-e jelÃ¶lve. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'value'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'bool A kijelÃ¶lÃ©s Ã©rtÃ©ke '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetSelection',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy ki van-e jelÃ¶lve. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'bool A kijelÃ¶lÃ©s Ã©rtÃ©ke '
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja a gomb Ã©rtÃ©kÃ©t. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int A gomb Ã©rtÃ©ke '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'DrawCircle',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Rajzol egy kÃ¶rt. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int A kÃ¶r kÃ¶zÃ©ppontjÃ¡nak x koordinÃ¡tÃ¡ja '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int A kÃ¶r kÃ¶zÃ©ppontjÃ¡nak y koordinÃ¡tÃ¡ja '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int A kÃ¶r sugara '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'thickness'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int A kÃ¶r vastagsÃ¡ga '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              },
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'thickness',
                type => 'int'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'Value',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A gomb Ã©rtÃ©ke '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'IsSelected',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A gomb kivÃ¡lasztottsÃ¡ga '
                }
              ]
            },
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'onClickColour',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A gomb szÃ­ne kattintÃ¡skor '
                }
              ]
            },
            type => 'Colour *'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'RadioButtonHolder',
      base => [
        {
          name => 'Widget',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
        {
          name => 'AddRadioButton',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'bgColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'borderThickness',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'ButtonCount',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'CheckNull',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'CurrentlySelected',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'CurrentlySelectedValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'Draw',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'frontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'GetCurrentlySelected',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'Handle',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'IsEnabled',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'IsInLine',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'IsVisible',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'OnEvent',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'RadioButtonHolder',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'radioButtons',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'RemoveRadioButton',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'RemoveRadioButton',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'Selected',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'SetBackgroundColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetBorderThickness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetEnable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetEventVoid',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RadioButtonHolder'
        },
        {
          name => 'SetFrontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetVisible',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'Widget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'X',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'XSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Y',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'YSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => '~RadioButtonHolder',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RadioButtonHolder'
        },
        {
          name => '~Widget',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Widget'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'RadioButtonHolder',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'LÃ©trehot egy kivÃ¡lasztÃ³ gomb tartÃ³ objektumot. '
                }
              ]
            },
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~RadioButtonHolder',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'AddRadioButton',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A listÃ¡hoz ad egy Ãºj gombot. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'button'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'RadioButton* Az Ãºj gomn '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'button',
                type => 'RadioButton *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RemoveRadioButton',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'EltÃ¡volÃ­t egy gombot. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'button'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'RadioButton* Az eltÃ¡volÃ­tandÃ³ gomb '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'button',
                type => 'RadioButton *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RemoveRadioButton',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'EltÃ¡volÃ­t egy gombot. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'place'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az eltÃ¡volÃ­tandÃ³ gomb sorszÃ¡ma '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'place',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetCurrentlySelected',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Megadja a jelenleg kivÃ¡lasztott gomb sorszÃ¡mÃ¡t. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int A jelenleg kivÃ¡lasztott gomb sorszÃ¡ma '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'CurrentlySelectedValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja a jelenleg kivÃ¡lasztott gomb Ã©rtÃ©kÃ©t. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'int A jelenleg kivÃ¡lasztott gomb Ã©rtÃ©ke '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetEventVoid',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'Egy gomra tÃ¶rtÃ©nÅ‘ kattintÃ¡skor meghÃ­vandÃ³ esemÃ©ny. '
                }
              ]
            },
            detailed => {
              doc => [
                params => [
                  {
                    parameters => [
                      {
                        name => 'RadioButtonHolder*'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'A meghÃ­vandÃ³ esemÃ©ny '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'event',
                type => 'std::function< void(RadioButtonHolder *)>'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Draw',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Kirajzolja a widgeteket. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual void '
                    }
                  ]
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'Draw'
            }
          },
          {
            kind => 'function',
            name => 'Handle',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Kezeli a widgeteket az inputnak megfelelÃµen. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'ev'
                      }
                    ],
                    doc => [
                      {
                        type => 'url',
                        link => 'structgenv_1_1event',
                        content => 'genv::event'
                      },
                      {
                        type => 'text',
                        content => ' Az input eventje '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual void '
                    }
                  ]
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ev',
                type => 'genv::event'
              }
            ],
            reimplements => {
              name => 'Handle'
            }
          },
          {
            kind => 'function',
            name => 'IsInLine',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy egy koordinÃ¡ta rajta van-e a widgeten. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'int Az x koordinÃ¡ta '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'int Az y koordinÃ¡ta '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'virtual bool '
                    }
                  ]
                }
              ]
            },
            type => 'virtual bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ],
            reimplements => {
              name => 'IsInLine'
            }
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'CheckNull',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'EllenÅ‘rzi, hogy vannak-e gombok. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'void '
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'radioButtons',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A tÃ¡rolt gombok listÃ¡ja '
                }
              ]
            },
            type => 'std::vector< RadioButton * >'
          },
          {
            kind => 'variable',
            name => 'OnEvent',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A meghÃ­ndÃ³ esemÃ©ny '
                }
              ]
            },
            type => 'std::function< void(RadioButtonHolder *)>'
          },
          {
            kind => 'variable',
            name => 'ButtonCount',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A gombok szÃ¡ma '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'CurrentlySelected',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'A jeleneg kivÃ¡lasztott gomb sorszÃ¡ma '
                }
              ]
            },
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'SelectionBox',
      base => [
        {
          name => 'Label',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
        {
          name => 'AddItem',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'bgColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'borderThickness',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'buttonColour',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'SelectionBox'
        },
        {
          name => 'buttonOnClickColour',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'SelectionBox'
        },
        {
          name => 'buttonSize',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'SelectionBox'
        },
        {
          name => 'currentlySelected',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'SelectionBox'
        },
        {
          name => 'CurrentlySelectedItem',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'CurrentlySelectedValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'Draw',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'EditMaxItemInView',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'EditSelectedFontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'EditSelectedFrontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'fontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Label'
        },
        {
          name => 'frontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Handle',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'IsEnabled',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'IsInLine',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'isOpened',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'SelectionBox'
        },
        {
          name => 'IsTextFits',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'IsVisible',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Label',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'maxItemsInView',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'SelectionBox'
        },
        {
          name => 'mouseOnItem',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'SelectionBox'
        },
        {
          name => 'RemoveItem',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'RemoveItem',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'Selected',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'selectedFontColour',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'SelectionBox'
        },
        {
          name => 'selectedFrontColour',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'SelectionBox'
        },
        {
          name => 'SelectionBox',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'SetBackgroundColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetBorderThickness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetButtonSize',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => 'SetEnable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetFontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'SetFrontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetText',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => 'SetVisible',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'Text',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Label'
        },
        {
          name => 'topItem',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'SelectionBox'
        },
        {
          name => 'Values',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'SelectionBox'
        },
        {
          name => 'Widget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'X',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'XSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Y',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'YSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => '~Label',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Label'
        },
        {
          name => '~SelectionBox',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'SelectionBox'
        },
        {
          name => '~Widget',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Widget'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'SelectionBox',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Egy legördülõ menüt ad meg. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'A widget X pozíciója '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A widget Y pozíciója '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'xSize'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A widget hossza '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'ySize'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A widget magassága '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'values'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A widget kezdõ értékeit tartalmazza '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              },
              {
                declaration_name => 'xSize',
                type => 'int'
              },
              {
                declaration_name => 'ySize',
                type => 'int'
              },
              {
                declaration_name => 'values',
                type => 'std::vector< std::string >'
              }
            ]
          },
          {
            kind => 'function',
            name => '~SelectionBox',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Draw',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez felel a widget kirajzolásáért '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'Draw'
            }
          },
          {
            kind => 'function',
            name => 'Handle',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a függvény kezeli az eventeket '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'ev'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az aktuális event objektum '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ev',
                type => 'genv::event'
              }
            ],
            reimplements => {
              name => 'Handle'
            }
          },
          {
            kind => 'function',
            name => 'IsInLine',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy az egér a saját keretein belül van-e '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az egér X pozíciója '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az egér Y pozíciója '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ],
            reimplements => {
              name => 'IsInLine'
            }
          },
          {
            kind => 'function',
            name => 'AddItem',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Új elemet ad hozzá a listához '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'value'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új elem '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'std::string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RemoveItem',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Töröl egy elemet a listából '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'value'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'A törölni kívánt elem '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'std::string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RemoveItem',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Töröl egy elemet a listából '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'value'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'A törölni kívánt elem helye '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'place',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CurrentlySelectedValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja a jelenleg kijelölt elem sorszámát a listában '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'A kijelölt elem sorszáma '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'CurrentlySelectedItem',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja a jelenleg kijelölt elemet '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'A kijelölt elem értéke '
                    }
                  ]
                }
              ]
            },
            type => 'std::string',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'EditSelectedFontColour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Átálítja kijelölt szöveg színét '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új piros érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új zöld érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új kék érték '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'EditSelectedFrontColour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Átálítja a kijelölt elõtér színét '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új piros érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új zöld érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új kék érték '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetButtonSize',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja a kis gombok méretét és a menü mellett látható nagy gomb szélességét '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'button'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'A gombok mérete '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'button',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'EditMaxItemInView',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Átálítja, hogy maximum hány elem látszódjon a lenyíló menüben. Amennyiben több elemet tartalmaz, mint ez a szám, görgetni kell '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'Az'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'egyszerre látható elemek száma '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'elements',
                type => 'int'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'isOpened',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Megadja, hogy le van-e gördítve a lista '
                }
              ]
            },
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'maxItemsInView',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Megadja, hogy hány elem látható egyszerre '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'currentlySelected',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Megadja, hogy hanyadik elem van jelenleg kiválasztva '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'mouseOnItem',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy jelenleg hanyadik elem fölött van az egér. -1 ha egyik fölött sem vagy a lista csukva van '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'topItem',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy a legördülõ listában melyik elem látható legfölül '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'selectedFontColour',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'A kiválasztás betûszíne '
                }
              ]
            },
            type => 'Colour *'
          },
          {
            kind => 'variable',
            name => 'selectedFrontColour',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A kiválasztás elõtér színe '
                }
              ]
            },
            type => 'Colour *'
          },
          {
            kind => 'variable',
            name => 'buttonColour',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A gomb színe '
                }
              ]
            },
            type => 'Colour *'
          },
          {
            kind => 'variable',
            name => 'buttonOnClickColour',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A gomb színe kattintáskor '
                }
              ]
            },
            type => 'Colour *'
          },
          {
            kind => 'variable',
            name => 'buttonSize',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A gombok mérete '
                }
              ]
            },
            type => 'int',
            initializer => '= 15'
          },
          {
            kind => 'variable',
            name => 'Values',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ebben vannak tárolva az értékek '
                }
              ]
            },
            type => 'std::vector< std::string >'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::stamp',
      all_members => [
        {
          name => 'c',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::stamp'
        },
        {
          name => 'operator()',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::stamp'
        },
        {
          name => 'stamp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::stamp'
        },
        {
          name => 'stamp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::stamp'
        },
        {
          name => 'x1',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::stamp'
        },
        {
          name => 'x2',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::stamp'
        },
        {
          name => 'x3',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::stamp'
        },
        {
          name => 'y1',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::stamp'
        },
        {
          name => 'y2',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::stamp'
        },
        {
          name => 'y3',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::stamp'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'stamp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'cc',
                type => 'canvas &'
              },
              {
                declaration_name => 'sx1',
                type => 'int'
              },
              {
                declaration_name => 'sy1',
                type => 'int'
              },
              {
                declaration_name => 'xsize',
                type => 'int'
              },
              {
                declaration_name => 'ysize',
                type => 'int'
              },
              {
                declaration_name => 'tx1',
                type => 'int'
              },
              {
                declaration_name => 'ty1',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'stamp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'cc',
                type => 'canvas &'
              },
              {
                declaration_name => 'tx1',
                type => 'int'
              },
              {
                declaration_name => 'ty1',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator()',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'c',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'canvas &'
          },
          {
            kind => 'variable',
            name => 'x1',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'y1',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'x2',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'y2',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'x3',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'y3',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'StepData',
      all_members => [
        {
          name => 'point',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'StepData'
        },
        {
          name => 'StepData',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'StepData'
        },
        {
          name => 'StepData',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'StepData'
        },
        {
          name => 'x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'StepData'
        },
        {
          name => 'y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'StepData'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'StepData',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'StepData',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'int'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'point',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'genv::text',
      all_members => [
        {
          name => 'operator()',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::text'
        },
        {
          name => 'str',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::text'
        },
        {
          name => 'text',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::text'
        },
        {
          name => 'text',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'genv::text'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'text',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 's',
                type => 'const std::string &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'text',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'c',
                type => 'char'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator()',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'str',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::string'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Widget',
      derived => [
        {
          name => 'Area',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'Label',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'RadioButtonHolder',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
        {
          name => 'bgColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'borderThickness',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Draw',
          virtualness => 'pure_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'frontColor',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Handle',
          virtualness => 'pure_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'IsEnabled',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'IsInLine',
          virtualness => 'pure_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'IsVisible',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Selected',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'SetBackgroundColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetBorderThickness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetEnable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetFrontColour',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'SetVisible',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'Widget',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Widget'
        },
        {
          name => 'X',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'XSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'Y',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => 'YSize',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'Widget'
        },
        {
          name => '~Widget',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'Widget'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Widget',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Egy új widgetet hoz létre. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'A widget X pozíciója '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A widget Y pozíciója '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'xSize'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A widget hossza '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'ySize'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'A widget magassága '
                      }
                    ]
                  }
                ]
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              },
              {
                declaration_name => 'xSize',
                type => 'int'
              },
              {
                declaration_name => 'ySize',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => '~Widget',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Draw',
            virtualness => 'pure_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Ez felel a widget kirajzolásáért '
                }
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplemented_by => [
              {
                name => 'Draw'
              },
              {
                name => 'Draw'
              },
              {
                name => 'Draw'
              },
              {
                name => 'Draw'
              },
              {
                name => 'Draw'
              },
              {
                name => 'Draw'
              },
              {
                name => 'Draw'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Handle',
            virtualness => 'pure_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ez a függvény kezeli az eventeket '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'ev'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az aktuális event objektum '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'ev',
                type => 'genv::event'
              }
            ],
            reimplemented_by => [
              {
                name => 'Handle'
              },
              {
                name => 'Handle'
              },
              {
                name => 'Handle'
              },
              {
                name => 'Handle'
              },
              {
                name => 'Handle'
              },
              {
                name => 'Handle'
              },
              {
                name => 'Handle'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsInLine',
            virtualness => 'pure_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Megadja, hogy az egér a saját keretein belül van-e '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'x'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az egér X pozíciója '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'y'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az egér Y pozíciója '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'virtual bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ],
            reimplemented_by => [
              {
                name => 'IsInLine'
              },
              {
                name => 'IsInLine'
              },
              {
                name => 'IsInLine'
              },
              {
                name => 'IsInLine'
              },
              {
                name => 'IsInLine'
              },
              {
                name => 'IsInLine'
              },
              {
                name => 'IsInLine'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetBorderThickness',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Átálítja a margó vastagságát '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'thickness'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új vastagság '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'thickness',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetBackgroundColour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Átálítja a widget háttérszínét '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új piros érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új zöld érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új kék érték '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetFrontColour',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Átálítja a widget elõtér színét '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'r'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Az új piros érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'g'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új zöld érték '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'b'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Az új kék érték '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'r',
                type => 'int'
              },
              {
                declaration_name => 'g',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetEnable',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetVisible',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'bool'
              }
            ]
          }
        ]
      },
      protected_members => {
        members => [
          {
            kind => 'variable',
            name => 'X',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A widget X koordinátája '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'Y',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A widget Y koordinátája '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'XSize',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A widget szélessége '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'YSize',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A widget magassága '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'bgColor',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A háttér színe '
                }
              ]
            },
            type => 'Colour *'
          },
          {
            kind => 'variable',
            name => 'frontColor',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Az elõtér színe '
                }
              ]
            },
            type => 'Colour *'
          },
          {
            kind => 'variable',
            name => 'borderThickness',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A margó vastagsága '
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'Selected',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Ki van-e választva a widget '
                }
              ]
            },
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'IsEnabled',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'IsVisible',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          }
        ]
      },
      brief => {},
      detailed => {}
    }
  ],
  namespaces => [
    {
      name => 'genv',
      classes => [
        {
          name => 'genv::box'
        },
        {
          name => 'genv::box_to'
        },
        {
          name => 'genv::canvas'
        },
        {
          name => 'genv::color'
        },
        {
          name => 'genv::event'
        },
        {
          name => 'genv::font'
        },
        {
          name => 'genv::grinput'
        },
        {
          name => 'genv::groutput'
        },
        {
          name => 'genv::line'
        },
        {
          name => 'genv::line_to'
        },
        {
          name => 'genv::move'
        },
        {
          name => 'genv::move_to'
        },
        {
          name => 'genv::stamp'
        },
        {
          name => 'genv::text'
        }
      ],
      namespaces => [
      ],
      enums => {
        members => [
          {
            kind => 'enum',
            name => 'keycode_t',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'key_tab',
                initializer => '= \'\\t\'',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_backspace',
                initializer => '= \'\\b\'',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_enter',
                initializer => '= \'\\r\'',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_escape',
                initializer => '= \'\\033\'',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_space',
                initializer => '= \' \'',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_up',
                initializer => '= 0x10000',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_down',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_right',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_left',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_insert',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_delete',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_home',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_end',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_pgup',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_pgdn',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_lshift',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_rshift',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_lctrl',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_rctrl',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_lalt',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_ralt',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_lwin',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_rwin',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_menu',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_numl',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_capsl',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_scrl',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f0',
                initializer => '= 0x20000',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f1',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f2',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f3',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f4',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f5',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f6',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f7',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f8',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f9',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f10',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f11',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f12',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f13',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f14',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f15',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enum',
            name => 'button_t',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'btn_left',
                initializer => '= 1',
                brief => {},
                detailed => {}
              },
              {
                name => 'btn_middle',
                brief => {},
                detailed => {}
              },
              {
                name => 'btn_right',
                brief => {},
                detailed => {}
              },
              {
                name => 'btn_wheelup',
                brief => {},
                detailed => {}
              },
              {
                name => 'btn_wheeldown',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enum',
            name => 'event_type',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'ev_key',
                initializer => '= 1',
                brief => {},
                detailed => {}
              },
              {
                name => 'ev_mouse',
                brief => {},
                detailed => {}
              },
              {
                name => 'ev_timer',
                brief => {},
                detailed => {}
              }
            ]
          }
        ]
      },
      functions => {
        members => [
          {
            kind => 'function',
            name => 'operator<<',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'canvas &',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              },
              {
                declaration_name => 'oper',
                type => 'Op'
              }
            ]
          },
          {
            kind => 'function',
            name => 'refresh',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dot',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator>>',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'grinput &',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'inp',
                type => 'grinput &'
              },
              {
                declaration_name => 'ev',
                type => 'event &'
              }
            ]
          }
        ]
      },
      variables => {
        members => [
          {
            kind => 'variable',
            name => 'gout',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'groutput &'
          },
          {
            kind => 'variable',
            name => 'gin',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'grinput &'
          }
        ]
      },
      brief => {},
      detailed => {}
    }
  ],
  files => [
    {
      name => 'Area.cpp',
      includes => [
        {
          name => 'Area.h',
          ref => '_area_8h'
        },
        {
          name => 'math.h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Area.h',
      includes => [
        {
          name => 'Widget.h',
          ref => '_widget_8h'
        },
        {
          name => 'functional'
        }
      ],
      included_by => [
        {
          name => 'Area.cpp',
          ref => '_area_8cpp'
        },
        {
          name => 'GameHandler.h',
          ref => '_game_handler_8h'
        },
        {
          name => 'GameHandler.cpp',
          ref => '_game_handler_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'asd.cpp',
      includes => [
        {
          name => 'asd.h',
          ref => 'asd_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'asd.h',
      includes => [
      ],
      included_by => [
        {
          name => 'asd.cpp',
          ref => 'asd_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Button.cpp',
      includes => [
        {
          name => 'Button.h',
          ref => '_button_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Button.h',
      includes => [
        {
          name => 'functional'
        },
        {
          name => 'Label.h',
          ref => '_label_8h'
        },
        {
          name => 'Widget.h',
          ref => '_widget_8h'
        },
        {
          name => 'graphics.hpp',
          ref => 'graphics_8hpp'
        }
      ],
      included_by => [
        {
          name => 'Button.cpp',
          ref => '_button_8cpp'
        },
        {
          name => 'GameHandler.cpp',
          ref => '_game_handler_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Colour.cpp',
      includes => [
        {
          name => 'Widgets/Colour.h'
        },
        {
          name => 'graphics.hpp',
          ref => 'graphics_8hpp'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Colour.h',
      includes => [
      ],
      included_by => [
        {
          name => 'Widget.h',
          ref => '_widget_8h'
        },
        {
          name => 'Label.h',
          ref => '_label_8h'
        },
        {
          name => 'RadioButton.h',
          ref => '_radio_button_8h'
        },
        {
          name => 'NumberInput.h',
          ref => '_number_input_8h'
        },
        {
          name => 'SelectionBox.h',
          ref => '_selection_box_8h'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'GameHandler.cpp',
      includes => [
        {
          name => 'string'
        },
        {
          name => 'GameHandler.h',
          ref => '_game_handler_8h'
        },
        {
          name => 'Widgets/Label.h'
        },
        {
          name => 'Widgets/NumberInput.h'
        },
        {
          name => 'RadioButtonHolder.h',
          ref => '_radio_button_holder_8h'
        },
        {
          name => 'RadioButton.h',
          ref => '_radio_button_8h'
        },
        {
          name => 'Button.h',
          ref => '_button_8h'
        },
        {
          name => 'Area.h',
          ref => '_area_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'GameHandler.h',
      includes => [
        {
          name => 'Widgets/GUIHandler.h'
        },
        {
          name => 'Level.h',
          ref => '_level_8h'
        },
        {
          name => 'RadioButtonHolder.h',
          ref => '_radio_button_holder_8h'
        },
        {
          name => 'NumberInput.h',
          ref => '_number_input_8h'
        },
        {
          name => 'Area.h',
          ref => '_area_8h'
        },
        {
          name => 'MinMax.h',
          ref => '_min_max_8h'
        }
      ],
      included_by => [
        {
          name => 'GameHandler.cpp',
          ref => '_game_handler_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'graphics.hpp',
      includes => [
        {
          name => 'string'
        }
      ],
      included_by => [
        {
          name => 'Widget.h',
          ref => '_widget_8h'
        },
        {
          name => 'Label.h',
          ref => '_label_8h'
        },
        {
          name => 'Button.h',
          ref => '_button_8h'
        },
        {
          name => 'Colour.cpp',
          ref => '_colour_8cpp'
        },
        {
          name => 'NumberInput.h',
          ref => '_number_input_8h'
        },
        {
          name => 'GUIHandler.cpp',
          ref => '_g_u_i_handler_8cpp'
        },
        {
          name => 'GUIHandler.h',
          ref => '_g_u_i_handler_8h'
        },
        {
          name => 'Label.cpp',
          ref => '_label_8cpp'
        },
        {
          name => 'NumberInput.cpp',
          ref => '_number_input_8cpp'
        },
        {
          name => 'SelectionBox.cpp',
          ref => '_selection_box_8cpp'
        },
        {
          name => 'SelectionBox.h',
          ref => '_selection_box_8h'
        }
      ],
      enums => {
        members => [
          {
            kind => 'enum',
            name => 'keycode_t',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'key_tab',
                initializer => '= \'\\t\'',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_backspace',
                initializer => '= \'\\b\'',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_enter',
                initializer => '= \'\\r\'',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_escape',
                initializer => '= \'\\033\'',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_space',
                initializer => '= \' \'',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_up',
                initializer => '= 0x10000',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_down',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_right',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_left',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_insert',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_delete',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_home',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_end',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_pgup',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_pgdn',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_lshift',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_rshift',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_lctrl',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_rctrl',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_lalt',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_ralt',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_lwin',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_rwin',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_menu',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_numl',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_capsl',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_scrl',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f0',
                initializer => '= 0x20000',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f1',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f2',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f3',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f4',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f5',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f6',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f7',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f8',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f9',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f10',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f11',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f12',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f13',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f14',
                brief => {},
                detailed => {}
              },
              {
                name => 'key_f15',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enum',
            name => 'button_t',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'btn_left',
                initializer => '= 1',
                brief => {},
                detailed => {}
              },
              {
                name => 'btn_middle',
                brief => {},
                detailed => {}
              },
              {
                name => 'btn_right',
                brief => {},
                detailed => {}
              },
              {
                name => 'btn_wheelup',
                brief => {},
                detailed => {}
              },
              {
                name => 'btn_wheeldown',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enum',
            name => 'event_type',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'ev_key',
                initializer => '= 1',
                brief => {},
                detailed => {}
              },
              {
                name => 'ev_mouse',
                brief => {},
                detailed => {}
              },
              {
                name => 'ev_timer',
                brief => {},
                detailed => {}
              }
            ]
          }
        ]
      },
      functions => {
        members => [
          {
            kind => 'function',
            name => 'operator<<',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'canvas &',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              },
              {
                declaration_name => 'oper',
                type => 'Op'
              }
            ]
          },
          {
            kind => 'function',
            name => 'refresh',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dot',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'out',
                type => 'canvas &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator>>',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'grinput &',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'inp',
                type => 'grinput &'
              },
              {
                declaration_name => 'ev',
                type => 'event &'
              }
            ]
          }
        ]
      },
      variables => {
        members => [
          {
            kind => 'variable',
            name => 'gout',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'groutput &'
          },
          {
            kind => 'variable',
            name => 'gin',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'grinput &'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'GUIHandler.cpp',
      includes => [
        {
          name => 'Widgets/Colour.h'
        },
        {
          name => 'Widgets/GUIHandler.h'
        },
        {
          name => 'graphics.hpp',
          ref => 'graphics_8hpp'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'GUIHandler.h',
      includes => [
        {
          name => 'graphics.hpp',
          ref => 'graphics_8hpp'
        },
        {
          name => 'vector'
        },
        {
          name => 'iostream'
        },
        {
          name => 'fstream'
        },
        {
          name => 'Widget.h',
          ref => '_widget_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Label.cpp',
      includes => [
        {
          name => 'Widgets/Label.h'
        },
        {
          name => 'string.h'
        },
        {
          name => 'graphics.hpp',
          ref => 'graphics_8hpp'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Label.h',
      includes => [
        {
          name => 'Colour.h',
          ref => '_colour_8h'
        },
        {
          name => 'graphics.hpp',
          ref => 'graphics_8hpp'
        },
        {
          name => 'Widget.h',
          ref => '_widget_8h'
        },
        {
          name => 'string.h'
        }
      ],
      included_by => [
        {
          name => 'Button.h',
          ref => '_button_8h'
        },
        {
          name => 'RadioButton.h',
          ref => '_radio_button_8h'
        },
        {
          name => 'NumberInput.h',
          ref => '_number_input_8h'
        },
        {
          name => 'SelectionBox.h',
          ref => '_selection_box_8h'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Level.cpp',
      includes => [
        {
          name => 'Level.h',
          ref => '_level_8h'
        },
        {
          name => 'iostream'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Level.h',
      includes => [
        {
          name => 'iostream'
        }
      ],
      included_by => [
        {
          name => 'GameHandler.h',
          ref => '_game_handler_8h'
        },
        {
          name => 'MinMax.h',
          ref => '_min_max_8h'
        },
        {
          name => 'Level.cpp',
          ref => '_level_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'MinMax.cpp',
      includes => [
        {
          name => 'MinMax.h',
          ref => '_min_max_8h'
        },
        {
          name => 'iostream'
        },
        {
          name => 'fstream'
        },
        {
          name => 'vector'
        },
        {
          name => 'stdio.h'
        },
        {
          name => 'random'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'MinMax.h',
      includes => [
        {
          name => 'Level.h',
          ref => '_level_8h'
        },
        {
          name => 'fstream'
        }
      ],
      included_by => [
        {
          name => 'GameHandler.h',
          ref => '_game_handler_8h'
        },
        {
          name => 'MinMax.cpp',
          ref => '_min_max_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'NumberInput.cpp',
      includes => [
        {
          name => 'sstream'
        },
        {
          name => 'Widgets/NumberInput.h'
        },
        {
          name => 'graphics.hpp',
          ref => 'graphics_8hpp'
        },
        {
          name => 'iostream'
        },
        {
          name => 'fstream'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'NumberInput.h',
      includes => [
        {
          name => 'graphics.hpp',
          ref => 'graphics_8hpp'
        },
        {
          name => 'Label.h',
          ref => '_label_8h'
        },
        {
          name => 'Colour.h',
          ref => '_colour_8h'
        },
        {
          name => 'functional'
        }
      ],
      included_by => [
        {
          name => 'GameHandler.h',
          ref => '_game_handler_8h'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'RadioButton.cpp',
      includes => [
        {
          name => 'RadioButton.h',
          ref => '_radio_button_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'RadioButton.h',
      includes => [
        {
          name => 'string'
        },
        {
          name => 'Label.h',
          ref => '_label_8h'
        },
        {
          name => 'Colour.h',
          ref => '_colour_8h'
        }
      ],
      included_by => [
        {
          name => 'RadioButtonHolder.h',
          ref => '_radio_button_holder_8h'
        },
        {
          name => 'GameHandler.cpp',
          ref => '_game_handler_8cpp'
        },
        {
          name => 'RadioButton.cpp',
          ref => '_radio_button_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'RadioButtonHolder.cpp',
      includes => [
        {
          name => 'RadioButtonHolder.h',
          ref => '_radio_button_holder_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'RadioButtonHolder.h',
      includes => [
        {
          name => 'Widget.h',
          ref => '_widget_8h'
        },
        {
          name => 'RadioButton.h',
          ref => '_radio_button_8h'
        },
        {
          name => 'vector'
        },
        {
          name => 'functional'
        }
      ],
      included_by => [
        {
          name => 'GameHandler.h',
          ref => '_game_handler_8h'
        },
        {
          name => 'GameHandler.cpp',
          ref => '_game_handler_8cpp'
        },
        {
          name => 'RadioButtonHolder.cpp',
          ref => '_radio_button_holder_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'SelectionBox.cpp',
      includes => [
        {
          name => 'vector'
        },
        {
          name => 'string'
        },
        {
          name => 'Widgets/SelectionBox.h'
        },
        {
          name => 'graphics.hpp',
          ref => 'graphics_8hpp'
        },
        {
          name => 'iostream'
        },
        {
          name => 'fstream'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'SelectionBox.h',
      includes => [
        {
          name => 'vector'
        },
        {
          name => 'string'
        },
        {
          name => 'Label.h',
          ref => '_label_8h'
        },
        {
          name => 'Colour.h',
          ref => '_colour_8h'
        },
        {
          name => 'graphics.hpp',
          ref => 'graphics_8hpp'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Widget.cpp',
      includes => [
        {
          name => 'Widgets/Widget.h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Widget.h',
      includes => [
        {
          name => 'graphics.hpp',
          ref => 'graphics_8hpp'
        },
        {
          name => 'Colour.h',
          ref => '_colour_8h'
        }
      ],
      included_by => [
        {
          name => 'Area.h',
          ref => '_area_8h'
        },
        {
          name => 'Label.h',
          ref => '_label_8h'
        },
        {
          name => 'Button.h',
          ref => '_button_8h'
        },
        {
          name => 'RadioButtonHolder.h',
          ref => '_radio_button_holder_8h'
        },
        {
          name => 'GUIHandler.h',
          ref => '_g_u_i_handler_8h'
        }
      ],
      brief => {},
      detailed => {}
    }
  ],
  groups => [
  ],
  pages => [
  ]
};
1;
