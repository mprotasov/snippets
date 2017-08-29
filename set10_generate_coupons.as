function generateCoupons():void {
	for (var i:int = 0; i < 20000; i++) {
		var coupon1:UniqueCouponVO = collectUniqueCouponData();
		coupon1.name += Math.random() * 1000;
		uniqueCouponProxy.create(coupon1, onCreateUniqueCouponAction);
	}

	for (var i:int = 0; i < 20000; i++) {
		var coupon2:CouponsVO = collectRangeCouponData();
		coupon2.name += Math.random() * 1000;
		couponsCardManagerProxy.createCoupons(coupon2, onCreateRangeCoupon);
	}
}