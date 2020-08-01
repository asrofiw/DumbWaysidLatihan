function hitungVoucher(voucher, harga){
	if (voucher == DumbWaysMantap) {
		voucher = DumbWaysMantap(harga);
	}
	if (voucher == DumbWaysJos) {
		voucher = DumbWaysJos(harga);
	}
}

function DumbWaysJos(harga){
	var minimalPembelian = 50000;
	if (harga >= minimalPembelian){
		var discount = harga * 0.211;
		if (discount >= 20000){
			discount = 20000;
		}
		var hargaDiscount = harga - discount;
		var change = harga - hargaDiscount;
		document.write("Harga : " + harga + "<br>");
		document.write("Diskon : " + discount + "<br>");
		document.write("Uang yang harus dibayar : " + hargaDiscount + "<br>");
		document.write("Kembalian : " + change + "<br>");
	} else{
		document.write("Minimal pembelian untuk menggunakan Voucher ini : " + minimalPembelian + "<br>");

	}	
}

function DumbWaysMantap(harga){
	var minimalPembelian = 80000;
	if (harga >= minimalPembelian){
		var discount = harga * 0.3;
		if (discount >= 40000){
			discount = 40000;
		}
		var hargaDiscount = harga - discount;
		var change = harga - hargaDiscount;
		document.write("Harga : " + harga + "<br>");
		document.write("Diskon : " + discount + "<br>");
		document.write("Uang yang harus dibayar : " + hargaDiscount + "<br>");
		document.write("Kembalian : " + change + "<br>");
	} else{
		document.write("Minimal pembelian untuk menggunakan Voucher ini : " + minimalPembelian + "<br>");

	}	
}

hitungVoucher(DumbWaysJos, 100000)