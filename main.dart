void main() {
  List<Map<String, dynamic>> MyOrder = [
    {
      "numberOrder": 1,
      "NameOrder": "Pizza",
      "IsAvailable": true,
      "StatusOrder": "VIP",
    },
    {
      "numberOrder": 2,
      "NameOrder": "Burger",
      "IsAvailable": true,
      "StatusOrder": "ready",
    },
    {
      "numberOrder": 3,
      "NameOrder": "macaroni",
      "IsAvailable": false,
      "StatusOrder": "not found",
    },
    {
      "numberOrder": 4,
      "NameOrder": "Shawarma",
      "IsAvailable": true,
      "StatusOrder": "ready",
    },
  ];

  for (int i = 0; i < MyOrder.length; i++) {
    if (MyOrder[i]["IsAvailable"] == false) {
      print("This order not found: ${MyOrder[i]["NameOrder"]}");
      continue;
    } else if (MyOrder[i]["StatusOrder"] == "VIP") {
      print("This order is VIP: ${MyOrder[i]["NameOrder"]}");
      break;
    }

    switch (MyOrder[i]['NameOrder']) {
      case "Pizza":
        print("The order takes 10 minutes to be prepared");
        break;

      case "Burger":
        print("The order takes 20 minutes to be prepared");
        break;

      case "macaroni":
        print("The order takes 15 minutes to be prepared");
        break;

      case "Shawarma":
        print("The order takes 15 minutes to be prepared");
        break;

      default:
        print("This product is not identified");
    }
    if (MyOrder[i]["numberOrder"] == 4) {
      print("It takes too long to prepare.");
    }
  }
}
