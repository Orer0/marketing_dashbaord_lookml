include: "/training/views/order_items.view.lkml"
include: "/training/views/orders.view.lkml"
include: "/training/views/dts/order_inter.view.lkml"
include: "/training/views/dts/order_by_month.view.lkml"
include: "/training/views/dts/order_by_days.view.lkml"

explore: order_items {}

explore: orders {}


explore: order_inter {}
