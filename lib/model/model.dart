import 'dart:convert';

MenuItems menuItemsFromJson(String str) => MenuItems.fromJson(json.decode(str));

String menuItemsToJson(MenuItems data) => json.encode(data.toJson());

class MenuItems {
  List<Menu>? menu;
  String? id;
  String? name;
  bool? canOrder;
  MenuTagging? menuTagging;
  String? apiRequestId;

  MenuItems({
    this.menu,
    this.id,
    this.name,
    this.canOrder,
    this.menuTagging,
    this.apiRequestId,
  });

  factory MenuItems.fromJson(Map<String, dynamic> json) => MenuItems(
    menu: json['menu'] != null
        ? List<Menu>.from(json['menu'].map((x) => Menu.fromJson(x)))
        : [],
    id: json["id"],
    name: json["name"],
    canOrder: json["can_order"],
    menuTagging: json["menu_tagging"] == null
        ? null
        : MenuTagging.fromJson(json["menu_tagging"]),
    apiRequestId: json["api_request_id"],
  );

  Map<String, dynamic> toJson() => {
    "menu": menu != null
        ? List<dynamic>.from(menu!.map((x) => x.toJson()))
        : [],
    "id": id,
    "name": name,
    "can_order": canOrder,
    "menu_tagging": menuTagging?.toJson(),
    "api_request_id": apiRequestId,
  };
}

class Menu {
  Id? id;
  String? name;
  String? posName;
  List<String>? priceList;
  List<MenuItem>? items;
  bool? canOrder;
  bool? isHidden;

  Menu({
    this.id,
    this.name,
    this.posName,
    this.priceList,
    this.items,
    this.canOrder,
    this.isHidden,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
    id: json["id"] == null ? null : Id.fromJson(json["id"]),
    name: json["name"],
    posName: json["pos_name"],
    priceList: json["price_list"] == null
        ? []
        : List<String>.from(json["price_list"].map((x) => x)),
    items: json["items"] == null
        ? []
        : List<MenuItem>.from(
        json["items"].map((x) => MenuItem.fromJson(x))),
    canOrder: json["can_order"],
    isHidden: json["is_hidden"],
  );

  Map<String, dynamic> toJson() => {
    "id": id?.toJson(),
    "name": name,
    "pos_name": posName,
    "price_list": priceList == null
        ? []
        : List<dynamic>.from(priceList!.map((x) => x)),
    "items": items == null
        ? []
        : List<dynamic>.from(items!.map((x) => x.toJson())),
    "can_order": canOrder,
    "is_hidden": isHidden,
  };
}

class Id {
  String? id;

  Id({
    this.id,
  });

  factory Id.fromJson(Map<String, dynamic> json) => Id(
    id: json["\u0024id"],
  );

  Map<String, dynamic> toJson() => {
    "\u0024id": id,
  };
}

class MenuItem {
  String? name;
  String? orderType;
  int? active;
  String? restaurant;
  String? description;
  String? cal;
  List<ItemSlot>? itemSlots;
  bool? skipSteps;
  bool? skipPopup;
  bool? useStepDescription;
  List<Price>? prices;
  List<String>? images;
  String? category;
  String? tz;
  bool? canOrder;
  String? id;
  List<dynamic>? dates;
  List<OptionGroup>? optionGroups;
  List<String>? availableCombos;
  bool? isSoldOut;
  String? displayPrice;
  bool? hasOptions;
  String? preferredImageTreatment;
  String? imageUrl;
  String? featuredImage;
  bool? isFeatured;
  bool? showCoupon;
  bool? comboOnly;
  bool? tobacco;
  bool? alcohol;
  bool? noHandoff;
  bool? offlineOnly;
  Pizza? pizza;
  List<PizzaGroup>? pizzaGroups;
  Hours? hours;
  bool? noFirstParty;
  bool? noGoogle;
  List<dynamic>? excludeFromHandoffProviders;

  MenuItem({
    this.name,
    this.orderType,
    this.active,
    this.restaurant,
    this.description,
    this.cal,
    this.itemSlots,
    this.skipSteps,
    this.skipPopup,
    this.useStepDescription,
    this.prices,
    this.images,
    this.category,
    this.tz,
    this.canOrder,
    this.id,
    this.dates,
    this.optionGroups,
    this.availableCombos,
    this.isSoldOut,
    this.displayPrice,
    this.hasOptions,
    this.preferredImageTreatment,
    this.imageUrl,
    this.featuredImage,
    this.isFeatured,
    this.showCoupon,
    this.comboOnly,
    this.tobacco,
    this.alcohol,
    this.noHandoff,
    this.offlineOnly,
    this.pizza,
    this.pizzaGroups,
    this.hours,
    this.noFirstParty,
    this.noGoogle,
    this.excludeFromHandoffProviders,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
    name: json["name"],
    orderType: json["order_type"],
    active: json["active"],
    restaurant: json["restaurant"],
    description: json["description"],
    cal: json["cal"],
    itemSlots: json["item_slots"] == null
        ? []
        : List<ItemSlot>.from(
        json["item_slots"].map((x) => ItemSlot.fromJson(x))),
    skipSteps: json["skip_steps"],
    skipPopup: json["skip_popup"],
    useStepDescription: json["use_step_description"],
    prices: json["prices"] == null
        ? []
        : List<Price>.from(json["prices"].map((x) => Price.fromJson(x))),
    images: json["images"] == null
        ? []
        : List<String>.from(json["images"].map((x) => x)),
    category: json["category"],
    tz: json["tz"],
    canOrder: json["can_order"],
    id: json["id"],
    dates: json["dates"] == null
        ? []
        : List<dynamic>.from(json["dates"].map((x) => x)),
    optionGroups: json["option_groups"] == null
        ? []
        : List<OptionGroup>.from(
        json["option_groups"].map((x) => OptionGroup.fromJson(x))),
    availableCombos: json["available_combos"] == null
        ? []
        : List<String>.from(json["available_combos"].map((x) => x)),
    isSoldOut: json["is_sold_out"],
    displayPrice: json["display_price"],
    hasOptions: json["has_options"],
    preferredImageTreatment: json["preferred_image_treatment"],
    imageUrl: json["image_url"],
    featuredImage: json["featured_image"],
    isFeatured: json["is_featured"],
    showCoupon: json["show_coupon"],
    comboOnly: json["combo_only"],
    tobacco: json["tobacco"],
    alcohol: json["alcohol"],
    noHandoff: json["no_handoff"],
    offlineOnly: json["offline_only"],
    pizza: json["pizza"] == null ? null : Pizza.fromJson(json["pizza"]),
    pizzaGroups: json["pizza_groups"] == null
        ? []
        : List<PizzaGroup>.from(
        json["pizza_groups"].map((x) => PizzaGroup.fromJson(x))),
    hours: json["hours"] == null ? null : Hours.fromJson(json["hours"]),
    noFirstParty: json["no_first_party"],
    noGoogle: json["no_google"],
    excludeFromHandoffProviders:
    json["exclude_from_handoff_providers"] == null
        ? []
        : List<dynamic>.from(
        json["exclude_from_handoff_providers"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "order_type": orderType,
    "active": active,
    "restaurant": restaurant,
    "description": description,
    "cal": cal,
    "item_slots": itemSlots == null
        ? []
        : List<dynamic>.from(itemSlots!.map((x) => x.toJson())),
    "skip_steps": skipSteps,
    "skip_popup": skipPopup,
    "use_step_description": useStepDescription,
    "prices": prices == null
        ? []
        : List<dynamic>.from(prices!.map((x) => x.toJson())),
    "images":
    images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
    "category": category,
    "tz": tz,
    "can_order": canOrder,
    "id": id,
    "dates": dates == null ? [] : List<dynamic>.from(dates!.map((x) => x)),
    "option_groups": optionGroups == null
        ? []
        : List<dynamic>.from(optionGroups!.map((x) => x.toJson())),
    "available_combos": availableCombos == null
        ? []
        : List<dynamic>.from(availableCombos!.map((x) => x)),
    "is_sold_out": isSoldOut,
    "display_price": displayPrice,
    "has_options": hasOptions,
    "preferred_image_treatment": preferredImageTreatment,
    "image_url": imageUrl,
    "featured_image": featuredImage,
    "is_featured": isFeatured,
    "show_coupon": showCoupon,
    "combo_only": comboOnly,
    "tobacco": tobacco,
    "alcohol": alcohol,
    "no_handoff": noHandoff,
    "offline_only": offlineOnly,
    "pizza": pizza?.toJson(),
    "pizza_groups": pizzaGroups == null
        ? []
        : List<dynamic>.from(pizzaGroups!.map((x) => x.toJson())),
    "hours": hours?.toJson(),
    "no_first_party": noFirstParty,
    "no_google": noGoogle,
    "exclude_from_handoff_providers": excludeFromHandoffProviders == null
        ? []
        : List<dynamic>.from(excludeFromHandoffProviders!.map((x) => x)),
  };
}

class Hours {
  int? close;
  int? open;

  Hours({
    this.close,
    this.open,
  });

  factory Hours.fromJson(Map<String, dynamic> json) => Hours(
    close: json["close"],
    open: json["open"],
  );

  Map<String, dynamic> toJson() => {
    "close": close,
    "open": open,
  };
}

class OptionGroup {
  String? name;
  int? min;
  int? max;
  List<OptionItem>? options;
  String? description;

  OptionGroup({
    this.name,
    this.min,
    this.max,
    this.options,
    this.description,
  });

  factory OptionGroup.fromJson(Map<String, dynamic> json) => OptionGroup(
    name: json["name"],
    min: json["min"],
    max: json["max"],
    options: json["options"] == null
        ? []
        : List<OptionItem>.from(
        json["options"].map((x) => OptionItem.fromJson(x))),
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "min": min,
    "max": max,
    "options": options == null
        ? []
        : List<dynamic>.from(options!.map((x) => x.toJson())),
    "description": description,
  };
}

class OptionItem {
  String? name;
  double? price;
  String? id;
  String? size;
  int? quantity;

  OptionItem({
    this.name,
    this.price,
    this.id,
    this.size,
    this.quantity,
  });

  factory OptionItem.fromJson(Map<String, dynamic> json) => OptionItem(
    name: json["name"],
    price: json["price"].toDouble(),
    id: json["id"],
    size: json["size"],
    quantity: json["quantity"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "price": price,
    "id": id,
    "size": size,
    "quantity": quantity,
  };
}

class Pizza {
  List<dynamic>? toppings;
  List<dynamic>? sizes;
  List<dynamic>? crusts;
  List<dynamic>? sauces;
  List<dynamic>? cheeses;

  Pizza({
    this.toppings,
    this.sizes,
    this.crusts,
    this.sauces,
    this.cheeses,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) => Pizza(
    toppings: json["toppings"] == null
        ? []
        : List<dynamic>.from(json["toppings"].map((x) => x)),
    sizes: json["sizes"] == null
        ? []
        : List<dynamic>.from(json["sizes"].map((x) => x)),
    crusts: json["crusts"] == null
        ? []
        : List<dynamic>.from(json["crusts"].map((x) => x)),
    sauces: json["sauces"] == null
        ? []
        : List<dynamic>.from(json["sauces"].map((x) => x)),
    cheeses: json["cheeses"] == null
        ? []
        : List<dynamic>.from(json["cheeses"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "toppings":
    toppings == null ? [] : List<dynamic>.from(toppings!.map((x) => x)),
    "sizes": sizes == null ? [] : List<dynamic>.from(sizes!.map((x) => x)),
    "crusts":
    crusts == null ? [] : List<dynamic>.from(crusts!.map((x) => x)),
    "sauces":
    sauces == null ? [] : List<dynamic>.from(sauces!.map((x) => x)),
    "cheeses":
    cheeses == null ? [] : List<dynamic>.from(cheeses!.map((x) => x)),
  };
}

class PizzaGroup {
  String? name;
  List<PizzaItem>? items;

  PizzaGroup({
    this.name,
    this.items,
  });

  factory PizzaGroup.fromJson(Map<String, dynamic> json) => PizzaGroup(
    name: json["name"],
    items: json["items"] == null
        ? []
        : List<PizzaItem>.from(
        json["items"].map((x) => PizzaItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "items": items == null
        ? []
        : List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class PizzaItem {
  String? item;
  List<String>? sizes;
  int? optQty;
  int? optCredit;
  int? allOptCredit;
  double? upcharge;
  List<String>? optGroupsDist;
  List<String>? optGroups;

  PizzaItem({
    this.item,
    this.sizes,
    this.optQty,
    this.optCredit,
    this.allOptCredit,
    this.upcharge,
    this.optGroupsDist,
    this.optGroups,
  });

  factory PizzaItem.fromJson(Map<String, dynamic> json) => PizzaItem(
    item: json["item"],
    sizes: json["sizes"] == null
        ? []
        : List<String>.from(json["sizes"].map((x) => x)),
    optQty: json["opt_qty"],
    optCredit: json["opt_credit"],
    allOptCredit: json["all_opt_credit"],
    upcharge: json["upcharge"].toDouble(),
    optGroupsDist: json["opt_groups_dist"] == null
        ? []
        : List<String>.from(json["opt_groups_dist"].map((x) => x)),
    optGroups: json["opt_groups"] == null
        ? []
        : List<String>.from(json["opt_groups"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "item": item,
    "sizes": sizes == null ? [] : List<dynamic>.from(sizes!.map((x) => x)),
    "opt_qty": optQty,
    "opt_credit": optCredit,
    "all_opt_credit": allOptCredit,
    "upcharge": upcharge,
    "opt_groups_dist": optGroupsDist == null
        ? []
        : List<dynamic>.from(optGroupsDist!.map((x) => x)),
    "opt_groups": optGroups == null
        ? []
        : List<dynamic>.from(optGroups!.map((x) => x)),
  };
}

class Price {
  String? name;
  double? price;

  Price({
    this.name,
    this.price,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
    name: json["name"],
    price: json["price"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "price": price,
  };
}

class ItemSlot {
  String? name;
  String? description;
  int? qty;
  double? basePrice;
  List<PizzaItem>? items;
  bool? useItemPrice;

  ItemSlot({
    this.name,
    this.description,
    this.qty,
    this.basePrice,
    this.items,
    this.useItemPrice,
  });

  factory ItemSlot.fromJson(Map<String, dynamic> json) => ItemSlot(
    name: json["name"],
    description: json["description"],
    qty: json["qty"],
    basePrice: json["base_price"].toDouble(),
    items: json["items"] == null
        ? []
        : List<PizzaItem>.from(
        json["items"].map((x) => PizzaItem.fromJson(x))),
    useItemPrice: json["use_item_price"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "qty": qty,
    "base_price": basePrice,
    "items": items == null
        ? []
        : List<dynamic>.from(items!.map((x) => x.toJson())),
    "use_item_price": useItemPrice,
  };
}

class MenuTagging {
  bool? en;
  List<Tag>? tags;

  MenuTagging({
    this.en,
    this.tags,
  });

  factory MenuTagging.fromJson(Map<String, dynamic> json) => MenuTagging(
    en: json["en"],
    tags: json["tags"] == null
        ? []
        : List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "en": en,
    "tags": tags == null
        ? []
        : List<dynamic>.from(tags!.map((x) => x.toJson())),
  };
}

class Tag {
  String? name;
  bool? visible;
  bool? dietary;
  bool? bulkDisable;
  bool? secretMenu;
  String? perkCode;
  String? id;
  bool? turnedOff;

  Tag({
    this.name,
    this.visible,
    this.dietary,
    this.bulkDisable,
    this.secretMenu,
    this.perkCode,
    this.id,
    this.turnedOff,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
    name: json["name"],
    visible: json["visible"],
    dietary: json["dietary"],
    bulkDisable: json["bulk_disable"],
    secretMenu: json["secret_menu"],
    perkCode: json["perk_code"],
    id: json["id"],
    turnedOff: json["turned_off"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "visible": visible,
    "dietary": dietary,
    "bulk_disable": bulkDisable,
    "secret_menu": secretMenu,
    "perk_code": perkCode,
    "id": id,
    "turned_off": turnedOff,
  };
}
