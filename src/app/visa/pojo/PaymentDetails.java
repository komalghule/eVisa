package app.visa.pojo;

import java.util.Date;

import org.springframework.data.mongodb.core.mapping.Field;
import org.springframework.format.annotation.DateTimeFormat;

public class PaymentDetails {
	@Field
	private String transactionId;
	@Field
	private double amount;
	@Field
	@DateTimeFormat(pattern="dd/MM/yyyy hh:mm:ss")
	private Date paymentDate;
	@Field
	private String paymentMode;
	public PaymentDetails() {
		this("",0.0,new Date(),"");
	}
	public PaymentDetails(String transactionId, double amount, Date paymentDate, String paymentMode) {
		this.transactionId = transactionId;
		this.amount = amount;
		this.paymentDate = paymentDate;
		this.paymentMode = paymentMode;
	}
	public String getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
	public String getPaymentMode() {
		return paymentMode;
	}
	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	@Override
	public String toString() {
		return "PaymentDetails [transactionId=" + transactionId + ", amount=" + amount + ", paymentDate=" + paymentDate
				+ ", paymentMode=" + paymentMode + "]";
	}
	
}
