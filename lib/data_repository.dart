import 'entry_model.dart';

final dummyListData = {
  "items": [
    {
      "title": "Item 1",
      "items": [
        {
          "title": "Item 1.1",
          "items": [
            {
              "title": "1.1.1",
              "items": [
                {
                  "title": "1.1.1.4",
                  "items": [

                  ]
                }
              ]
            },
            {
              "title": "1.1.2",
              "items": [

              ]
            }
          ]
        },
        {
          "title": "Item 1.2",
          "items": [
            {
              "title": "1.2.1",
              "items": [

              ]
            }
          ]
        }
      ]
    },
    {
      "title": "Item 2",
      "items": [
        {
          "title": "2.1",
          "items": [

          ]
        },
        {
          "title": "2.2",
          "items": [

          ]
        }
      ]
    },
    {
      "title": "Item 3",
      "items": [
        {
          "title": "3.1",
          "items": [

          ]
        },
        {
          "title": "3.2",
          "items": [
            {
              "title": "3.2.1",
              "items": [

              ]
            }
          ]
        }
      ]
    }
  ]
};
class DataRepository{
  static List<Item> getNestedList(){
    final itemList = ItemList.fromJson(dummyListData);
    final nestedList = itemList.items;
    return nestedList;
  }
}