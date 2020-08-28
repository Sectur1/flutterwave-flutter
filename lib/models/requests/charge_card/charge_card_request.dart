import 'package:flutter/material.dart';
import 'package:flutterwave/models/requests/authorization.dart';
import 'package:flutterwave/utils/flutterwave_utils.dart';

class ChargeCardRequest {
  String cardNumber;
  String cvv;
  String expiryMonth;
  String expiryYear;
  String amount;
  String currency;
  String email;
  String fullName;
  String txRef;
  String redirectUrl;
  Authorization authorization;

  ChargeCardRequest({
    @required this.cardNumber,
    @required this.cvv,
    @required this.expiryMonth,
    @required this.expiryYear,
    @required this.currency,
    @required this.amount,
    @required this.email,
    @required this.fullName,
    @required this.txRef,
    this.redirectUrl = FlutterwaveUtils.DEFAULT_REDIRECT_URL,
    this.authorization
  });

  Map<String, dynamic> toJson() {
    return {
      "card_number": this.cardNumber,
      "cvv": this.cvv,
      "expiry_month": this.expiryMonth,
      "expiry_year": this.expiryYear,
      "currency": this.currency,
      "amount": this.amount,
      "email": this.email,
      "fullname": this.fullName,
      "tx_ref": this.txRef,
      "redirect_url": this.redirectUrl,
      "authorization": this.authorization == null
          ? Authorization().toJson()
          : this.authorization.toJson()
    };
  }
}