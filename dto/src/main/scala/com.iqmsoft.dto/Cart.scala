package com.iqmsoft.dto

case class Cart(cardId: String, userId: String, issuedTimestamp: Long, deliveredOn: Long,
                orders: List[Order])
