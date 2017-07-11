package app.visa.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class PaymentDetailForm {
	
	private String applicationFormId;
	private String transactionId;
	private String amount;
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date date;
	private String paymentMode;
	
	public PaymentDetailForm() {
		this("","","",new Date(),"");
	}
	
	public PaymentDetailForm(String transactionId,String applicationFormId, String amount, Date date, String paymentMode) {
		this.applicationFormId = applicationFormId;
		this.transactionId = transactionId;
		this.amount = amount;
		this.date = date;
		this.paymentMode = paymentMode;
	}
	public String getApplicationFormId() {
		return applicationFormId;
	}
	public void setApplicationFormId(String applicationFormId) {
		this.applicationFormId = applicationFormId;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getPaymentMode() {
		return paymentMode;
	}
	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	
	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

	@Override
	public String toString() {
		return "PaymentDetailForm [applicationFormId=" + applicationFormId + ", transactionId=" + transactionId
				+ ", amount=" + amount + ", date=" + date + ", paymentMode=" + paymentMode + "]";
	}	
}
