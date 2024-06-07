import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:frontendapp/controllers/order_controller.dart';
import 'package:frontendapp/models/order_item_model.dart';
import 'package:frontendapp/models/order_model.dart';

class MyOrderPage extends StatefulWidget {
  @override
  _MyOrderPageState createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  final OrderController orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('My T-shirt Order',  style: TextStyle(color: Colors.white),),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepOrangeAccent, Colors.orangeAccent],
            ),
          ),
        ),
      ),
      body: Obx(
        () {
          if (orderController.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          } else if (orderController.orders.isEmpty) {
            return Center(child: Text('No orders available'));
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (OrderModel order in orderController.orders)
                    buildOrderCard(order),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget buildOrderCard(OrderModel order) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepOrangeAccent, Colors.orangeAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order ID: ${order.id}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Total Price: ${order.totalPrice}',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 12),
            for (OrderItemModel orderItem in order.orderItemModel)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selected Size: ${orderItem.selectedSize}',
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    'Status: ${orderItem.status}',
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            const Divider(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
