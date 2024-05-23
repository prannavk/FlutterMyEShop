import 'package:flutter/material.dart';

class DeliveryNote {
  final int id;
  final String note;
  final MyProduct associatedProduct;  

  MyProduct({
    @required this.id,
    @required this.note,    
    @required this.associatedProduct,
  });
}

const String deliveryNote =
    "Detail Enquiry for Product Packaging while Delivery";
