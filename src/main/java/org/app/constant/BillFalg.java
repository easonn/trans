package org.app.constant;


public enum BillFalg {
	RECEIPT("RECEIPT"), PAY("PAY");
	private final String value;

	private BillFalg(String value) {
		this.value = value;
	};

	public String getValue() {
		return value;
	}
}
