package rencar.model;

public class Payment {
	private int id;
	private String amount;
	private String mode_of_payment;
	private String card_number;
	private int booking_id;
	private int status;
	
	public Payment() {		
		
	}
	
	public Payment(int id, String amount, String mode_of_payment, String card_number, int booking_id, int status) {
		this.id 				= id;
		this.amount 			= amount;
		this.mode_of_payment 	= mode_of_payment;
		this.card_number 		= card_number;
		this.booking_id 		= booking_id;
		this.status 			= status;
	}
	
	public Payment(String amount,String mode_of_payment, String card_number, int booking_id, int status) {
		this.amount 			= amount;
		this.mode_of_payment 	= mode_of_payment;
		this.card_number		= card_number;
		this.booking_id 		= booking_id;
		this.status 			= status;
	}

	public Payment(String amount, String mode_of_payment, String card_number, int booking_id) {
		this.amount 			= amount;
		this.mode_of_payment 	= mode_of_payment;
		this.card_number 		= card_number;
		this.booking_id 		= booking_id;	
	}
	
	public Payment(String amount, String mode_of_payment, int booking_id) {
		this.amount 			= amount;
		this.mode_of_payment 	= mode_of_payment;
		this.booking_id 		= booking_id;	
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public int getBooking_id() {
		return booking_id;
	}

	public void setBooking_id(int booking_id) {
		this.booking_id = booking_id;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMode_of_payment() {
		return mode_of_payment;
	}

	public void setMode_of_payment(String mode_of_payment) {
		this.mode_of_payment = mode_of_payment;
	}

	public String getCard_number() {
		return card_number;
	}

	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}
}
