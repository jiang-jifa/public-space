<h1 align="center">React Table Component</h1>

## Introduction
A react table UI component.

## Demo

[View Demo](https://kavience.github.io/react-table/)

## Usage

```
npm install @kavience/react-table
```

Easy use

```ts
import React from 'react';
import ReactTable from '@kavience/react-table';

const columns: any[] = [
  {
    title: '姓名',
    align: 'center',
    width: 120,
    ellipsis: true,
    dataIndex: 'name'
  },
  {
    title: '年龄',
    dataIndex: 'age'
  },
  {
    title: '身高',
    dataIndex: 'height'
  },
  {
    title: '体重',
    dataIndex: 'weight'
  }
];

const EasyUse = () => {
  const dataSource = [
    {
      id: 1,
      name:
        'kevinkevinkevinkevinkevikevinkevinkevinkevinkevinkevinkevinkevinkevinkevinn',
      age: 28,
      height: '168cm',
      weight: '75kg'
    },
    {
      id: 2,
      name: 'kevin2',
      age: 28,
      height: '168cm',
      weight: '75kg'
    },
    {
      id: 3,
      name: 'kevin3',
      age: 28,
      height: '168cm',
      weight: '75kg'
    }
  ];
  
  return (
    <div>
      <h2>Use React Table Simply</h2>
      <ReactTable
        size="mini"
        bordered
        rowKey="id"
        columns={columns}
        dataSource={dataSource}
      />
    </div>
  );
};

export default EasyUse;
```

## Api

### Table 
| Property   | Description        | Type                                                    | Default  | Version |
| :--------- | :----------------- | :------------------------------------------------------ | :------- | :------ |
| columns    | Table coulmns      | Column[]                                                | []       | 0.0.1   |
| dataSource | Table data source  | any[]                                                   | []       | 0.0.1   |
| bordered   | Show border or not | boolean                                                 | false    | 0.0.1   |
| rowKey     | Row's unique key   | string                                                  | 'key'    | 0.0.1   |
| size       | Table size         | 'mini'   \| 'small' \| 'middle' \| 'large'              | 'middle' | 0.0.1   |
| header     | Table header       | any                                                     |          | 0.0.1   |
| footer     | Table  footer      | any                                                     |          | 0.0.1   |
| pagination | Pagination         | PaginationProps                                         |          | 0.0.1   |
| locale     | Language locale    | ReactTableLocal                                         |          | 0.0.1   |
| onChange   | Table change       | (pagination?: any, filters?: any, sorter?: any) => any; |          | 0.0.1   |

### Column
| Property  | Description                                                                          | Type                                                       | Default | Version |
| :-------- | :----------------------------------------------------------------------------------- | :--------------------------------------------------------- | :------ | :------ |
| key       | Unique key of this column, you can ignore this prop if you've set a unique dataIndex | string                                                     |         | 0.0.1   |
| dataIndex | Display field of the data record                                                     | string                                                     |         | 0.0.1   |
| title     | Column title                                                                         | string                                                     |         | 0.0.1   |
| align     | The specify which way that column is aligned                                         | \'left' \| 'right' \| 'center'                             |         | 0.0.1   |
| width     | Table Width                                                                          | number  \| string                                          |         | 0.0.1   |
| ellipsis  | The ellipsis cell content, not working with sorter and filters for now.              | boolean                                                    | false   | 0.0.1   |
| hidden    | Hidden this column                                                                   | boolean                                                    | false   | 0.0.1   |
| className | Column class                                                                         | string                                                     |         | 0.0.1   |
| onFilter  | Column on filter                                                                     | (value: string, record: any) => boolean;                   |         | 0.0.1   |
| sorter    | Column Sorter                                                                        | ((firstRecord: any, secondRecord: any) => any) \| boolean; |         | 0.0.1   |


## Thanks

- rc-checkbox
- rc-dropdown
- rc-pagination
- rc-select
- rc-switch
- [willow-component-tools](https://github.com/kavience/willow-component-tool)