<?php
class Terbilang {
	
	private function right($s,$amount) {
		if (strlen($s)<$amount)
			return $s;
		else	{
			$temp = substr($s,-$amount,$amount);
			return $temp;
		}
	}

	private function left($s,$amount) {
		if(strlen($s)<$amount)
			return $s;
		else {
			$temp = substr($s,0,$amount);
			return $temp;
		}
	}

	private function getDigit($digit) {
		$arr = array('',' satu',' dua',' tiga',' empat',' lima',' enam',' tujuh',' delapan',' sembilan');
		return $arr[$digit];
	}

	private function getPuluhan($teksPuluhan) {
		$hasil = "";
		$nilai = intval($teksPuluhan);
		if (substr($teksPuluhan,0,1) == "1") {
			switch($nilai) {
				case 10 : $hasil = " sepuluh"; break;
				case 11 : $hasil = " sebelas"; break;
				case 12 : $hasil = " dua belas"; break;
				case 13 : $hasil = " tiga belas"; break;
				case 14 : $hasil = " empat belas"; break;
				case 15 : $hasil = " lima belas"; break;
				case 16 : $hasil = " enam belas"; break;
				case 17 : $hasil = " tujuh belas"; break;
				case 18 : $hasil = " delapan belas"; break;
				case 19 : $hasil = " sembilan belas"; break;
				default : ;
			}
		} else {
			$nilai_2 = intval(substr($teksPuluhan,0,1));
			switch($nilai_2) {
				case 2 : $hasil = " dua puluh"; break;
				case 3 : $hasil = " tiga puluh"; break;
				case 4 : $hasil = " empat puluh"; break;
				case 5 : $hasil = " lima puluh"; break;
				case 6 : $hasil = " enam puluh"; break;
				case 7 : $hasil = " tujuh puluh"; break;
				case 8 : $hasil = " delapan puluh"; break;
				case 9 : $hasil = " sembilan puluh"; break;
			}
			$hasil = $hasil.$this->getDigit(substr($teksPuluhan,1,1));
		}
		return $hasil;
	}

	private function getRatusan($teksRatusan) {
		$hasil ="";
		$nilai = intval($teksRatusan);
		if ($nilai == 0) {}
		$teksRatusan = $this->right("000" . $teksRatusan,3);
		
		if (substr($teksRatusan,0,1) != "0") {
			if (substr($teksRatusan,0,1) == "1")
				$hasil = " seratus";
			else
				$hasil = $this->getDigit(substr($teksRatusan,0,1)) . " ratus";
		}
		if (substr($teksRatusan,1,1) != "0")
			$hasil = $hasil . $this->getPuluhan(substr($teksRatusan,1,2));
		else
			$hasil = $hasil . $this->getDigit(substr($teksRatusan,2,1));
		return $hasil;
	}

	public function spellNumber($number, $spellRupiah=false, $spellCent=false) {
		$rupiah = '';
		$decimalplace = -1;
		
		$satuan[1] = " ribu";
		$satuan[2] = " juta";
		$satuan[3] = " milyar";
		$satuan[4] = " trilyun";
		$number = trim($number);
		$decimalplace = strpos($number,".");
		
		if ($decimalplace > -1) {
			$temp = $number . "00";	
			$sen = $this->getPuluhan(substr($temp,$decimalplace + 1,2),2);
			$number = $this->left($number,$decimalplace);
		}
		$count = 0;
		do {
			$temp = $this->getRatusan($this->right($number,3));
			if ($temp != "")
				$rupiah = $temp . @$satuan[$count] . $rupiah;
			if (strlen($number) > 3)
				$number = $this->left($number,strlen($number)-3);
			else
				$number = "";
			$count = $count + 1;
		}
		while (trim($number) != "");
		
		if ($spellRupiah) {
			if ($rupiah == "")
				$rupiah = "nol rupiah";
			else
				$rupiah = $rupiah . " rupiah";
		}
		
		if ($spellCent) {
			if ($sen == "")
				$sen = "";//" dan nol sen";
			else
				$sen = "," . $sen . " sen";
		}
		
		if (substr(trim($rupiah),0,9) == "satu ribu")
			$rupiah = "seribu" . substr($rupiah,10);
		return trim($rupiah . @$sen);
	}
}
?>
